# encoding: utf-8
class ConsolidatedPaymentsDatatable
  delegate :params, :h, :l, :number_to_currency, :content_tag, :link_to, :unit_budget_path, :tag_commercial_status_unit, :tag_commercial_status_handing, to: :@view

  def initialize(view)
    @view = view
  end

  def as_json(options = {})
    {
      sEcho: params[:sEcho].to_i,
      iTotalRecords: ProcessUnit.count,
      iTotalDisplayRecords: process_units.total_entries,
      aaData: data
    }
  end

  def process_units
    @process_units ||= fetch_process_units
  end

private

  def data
    i = 0
    process_units.map do |element|
      i += 1
      [
        budget_link(element),
        "<span data-client-id=#{element.client.id} class='client_row'>#{element.client.full_name } <i class='link-icon-gray'></i></span>",
        element.sales_process_end_date && l(element.sales_process_end_date, format: :short) || "-",
        element.approval_process_end_date && l(element.bank_approval_process_end_date, format: :short) || "-",
        l(element.created_at, format: :short),
        tag_commercial_status_unit(element.unit),
        element.user.username,
        element.budget.funding_type_name,
        element.budget.bank_name || '-',
        number_to_currency(element.budget.calculate_price_without_igv, unit: element.project.currency),
        number_to_currency(element.budget.calculate_amount_igv, unit: element.project.currency),
        number_to_currency(element.budget.total_price_discount, unit: element.project.currency),
        number_to_currency(element.budget.payments.separation_initial_tag.inject(0){|sum, i| sum + i.amount}, unit: element.project.currency),
        (i+element.bank_approval_process_end_date.to_i)
      ]
    end
  end

  def budget_link(element)
    if element.budget
      link_to(unit_budget_path(element.budget.unit.id, element.budget_id), target: "_blank") {
        (element.budget_code + "<i class='link-icon-gray'></i>").html_safe
      }
    else
      "-"  
    end
  end

  def fetch_process_units
    process_units = ProcessUnit.are_separates.includes(:user, :unit, :client, project: [:project_setting], budget: [:funding_type, :bank, :payments, :process_units])
    if sort_column == 'process_units.completed_at'
      process_units = process_units.page(page).per_page(per_page)
    else
      process_units = process_units.order("#{sort_column} #{sort_direction}").page(page).per_page(per_page)
    end
    process_units = filter_Ssearch(process_units)
    process_units = filter_Ssearch_project(process_units)
    process_units = filter_Ssearch_funding(process_units)
    process_units = filter_Ssearch_status(process_units)
    process_units = filter_Ssearch_date(process_units)
    process_units = filter_Ssearch_unit_type(process_units)
    process_units
  end

  def page
    params[:iDisplayStart].to_i/per_page + 1
  end

  def per_page
    params[:iDisplayLength].to_i > 0 ? params[:iDisplayLength].to_i : 10
  end

  def sort_column
    columns = %w[budgets.code clients.lname units.date_sold process_units.completed_at process_units.created_at users.username funding_types.name banks.name budgets.price_without_igv project_settings.igv budgets.total_price_discount process_units.id]
    columns[params[:iSortCol_0].to_i]
  end

  def sort_direction
    params[:sSortDir_0] == "desc" ? "desc" : "asc"
  end

  def filter_Ssearch(process_units)
    if params[:sSearch].present?
      process_units = process_units.where("budgets.code Ilike :search OR clients.lname Ilike :search OR clients.fname Ilike :search OR users.username Ilike :search OR funding_types.name Ilike :search OR banks.name Ilike :search", search: "%#{params[:sSearch]}%")
    end
    process_units
  end

  def filter_Ssearch_project(process_units)
    if params[:sSearch_0].present?
      process_units = process_units.where('process_units.project_id = ?', params[:sSearch_0])
    end
    process_units
  end

  def filter_Ssearch_funding(process_units)
    if params[:sSearch_4].present?
      process_units = process_units.where('funding_types.id= ?', params[:sSearch_4])
    end
    process_units
  end

  def filter_Ssearch_main_unit(process_units)
    if params[:sSearch_9].present?
      process_units = process_units.where("process_units.unit_id IN (?)", params[:sSearch_9].gsub('|', ',').split(','))
    end
    process_units
  end

  def filter_Ssearch_unit_type(process_units)
    if params[:sSearch_11].present?
      process_units = process_units.where("units.unit_type_id IN (?)", params[:sSearch_11].gsub('|', ',').split(',')) 
    end
    process_units
  end

  def filter_Ssearch_date(process_units)
    if params[:sSearch_7].present? && params[:sSearch_7].split("-yadcf_delim-").present?
      if params[:sSearch_10].present?
        process_units = case params[:sSearch_10]
        when 'Separación' 
          filter_sSearch_created_at(process_units)
        when 'Aprobación'
          filter_sSearch_bank_approval_date(process_units)
        when 'Venta'
          filter_sSearch_sales_date(process_units)
        when 'Entrega'
          filter_sSearch_handings_finished_at(process_units)
        when 'Personalizado'
          filter_sSearch_custom_process_date(process_units)        
        end
      else
        filter_sSearch_created_at(process_units)
      end
    else
      process_units
    end
  end

  def filter_sSearch_custom_process_date(process_units)
    dates = params[:sSearch_7].split('-yadcf_delim-')
    # date_start = DateTime.parse(dates[0]).end_of_day unless dates[0].blank?
    date_start = dates[0].blank? ? nil : DateTime.parse(dates[0]).beginning_of_day
    if dates.count == 1
      process_units = process_units.joins(unit: [:process_customs]).where("process_customs.updated_at >= ? AND process_customs.custom_status_id IS NOT NULL AND process_customs.active = 't'", date_start)
    else
      date_end = DateTime.parse(dates[1]).end_of_day
      process_units =
        if date_start.nil?
          process_units.joins(unit: [:process_customs]).where("process_customs.updated_at <= ? AND process_customs.custom_status_id IS NOT NULL AND process_customs.active = 't'", date_end)
        else
          process_units.joins(unit: [:process_customs]).where(
            "process_customs.created_at >= :start_date  AND process_customs.updated_at <= :end_date AND process_customs.custom_status_id IS NOT NULL AND process_customs.active = 't'", start_date: date_start, end_date: date_end)
        end
    end
    process_units    
  end



  def filter_sSearch_handings_finished_at(process_units)
    dates = params[:sSearch_7].split('-yadcf_delim-')
    date_start = DateTime.parse(dates[0]).beginning_of_day unless dates[0].blank?
    
    if dates.count == 1
      process_units = process_units.joins(unit: [:handings]).where('handings.handing_at >= ?', date_start)
    else
      date_end = DateTime.parse(dates[1]).end_of_day
      process_units =
        if date_start.nil?
          process_units.joins(unit: [:handings]).where("handings.handing_at <= ?", date_end)
        else
          process_units.joins(unit: [:handings]).where(
            "handings.handing_at >= :start_date  AND handings.handing_at <= :end_date ",
            start_date: date_start, end_date: date_end
          )
        end
    end
    process_units
  end


  def filter_sSearch_sales_date(process_units)
    dates = params[:sSearch_7].split('-yadcf_delim-')
    date_start = DateTime.parse(dates[0]).beginning_of_day unless dates[0].blank?
    if dates.count == 1
      process_units =
        process_units.are_separates.filter_by_budget_id(Budget.joins(unit: :process_units).where('(units.commercial_status_id = 8 OR units.commercial_status_id = 9) AND date(process_units.updated_at) >= ?', date_start).pluck(:id))
    else
      date_end = DateTime.parse(dates[1]).end_of_day
      process_units =
        if date_start.nil?
          process_units.are_separates.filter_by_budget_id(Budget.joins(unit: :process_units).where('(units.commercial_status_id = 8 OR units.commercial_status_id = 9) AND process_units.updated_at <= ?', date_end).pluck(:id))
        else
          process_units.are_separates.filter_by_budget_id(Budget.joins(unit: :process_units).where('(units.commercial_status_id = 8 OR units.commercial_status_id = 9) AND process_units.updated_at BETWEEN ? AND ?', date_start, date_end).pluck(:id))
        end
    end
    process_units
  end


  def filter_sSearch_bank_approval_date(process_units)
    dates = params[:sSearch_7].split('-yadcf_delim-')
    date_start = DateTime.parse(dates[0]).beginning_of_day unless dates[0].blank?
    if dates.count == 1
      process_units =
        process_units.are_separates.filter_by_budget_id(Budget.joins(:process_units).where('process_units.commercial_status_id = 6 AND date(process_units.updated_at) >= ?', date_start).pluck(:id))
    else
      date_end = DateTime.parse(dates[1]).end_of_day
      process_units =
        if date_start.nil?
          process_units.are_separates.filter_by_budget_id(Budget.joins(:process_units).where('process_units.commercial_status_id = 6 AND process_units.updated_at <= ?', date_end).pluck(:id))
        else
          process_units.are_separates.filter_by_budget_id(Budget.joins(:process_units).where('process_units.commercial_status_id = 6 AND process_units.updated_at BETWEEN ? AND ?', date_start, date_end).pluck(:id))
        end
    end
    process_units
  end


  def filter_sSearch_created_at(process_units)
    dates = params[:sSearch_7].split('-yadcf_delim-')
    date_start = DateTime.parse(dates[0]).beginning_of_day unless dates[0].blank?
    if dates.count == 1
      process_units = process_units.where('process_units.created_at >= ?', date_start)
    else
      date_end = DateTime.parse(dates[1]).end_of_day
      process_units =
        if date_start.nil?
          process_units.where("process_units.created_at <= ?", date_end)
        else
          process_units.where(
            "process_units.created_at >= :start_date AND process_units.created_at <= :end_date ",
            start_date: date_start, end_date: date_end
          )
        end
    end
    process_units
  end


  def filter_sSearch_updated_at(process_units)
    dates = params[:sSearch_7].split('-yadcf_delim-')
    date_start = DateTime.parse(dates[0]).beginning_of_day unless dates[0].blank?
    if dates.count == 1
      process_units = process_units.where('process_units.updated_at >= ?', date_start)
    else
      date_end = DateTime.parse(dates[1]).end_of_day
      process_units =
        if date_start.nil?
          process_units.where("process_units.updated_at <= ?", date_end)
        else
          process_units.where(
            "process_units.updated_at >= :start_date  AND process_units.updated_at <= :end_date ",
            start_date: date_start, end_date: date_end
          )
        end
    end
    process_units
  end

  def filter_sSearch_approval_started_at(process_units)
    dates = params[:sSearch_7].split('-yadcf_delim-')
    date_start = DateTime.parse(dates[0]).beginning_of_day unless dates[0].blank?
    if dates.count == 1
      process_units =
        process_units.are_separates.filter_by_budget_id(Budget.joins(:process_units).where('process_units.commercial_status_id=6 AND date(process_units.created_at) >= ?', date_start).pluck(:id))
    else
      date_end = DateTime.parse(dates[1]).end_of_day
      process_units =
        if date_start.nil?
          process_units.are_separates.filter_by_budget_id(Budget.joins(:process_units).where('process_units.commercial_status_id=6 AND process_units.created_at <= ?', date_end).pluck(:id))
        else
          process_units.are_separates.filter_by_budget_id(Budget.joins(:process_units).where('process_units.commercial_status_id=6 AND process_units.created_at BETWEEN ? AND ?', date_start, date_end).pluck(:id))
        end
    end
    process_units
  end



  def filter_sSearch_started_at(process_units)
    dates = params[:sSearch_7].split('-yadcf_delim-')
    date_start = DateTime.parse(dates[0]).beginning_of_day unless dates[0].blank?
    if dates.count == 1
      process_units =
        process_units.are_separates.filter_by_budget_id(Budget.joins(:process_units).where('date(process_units.created_at) >= ?', date_start).pluck(:id))
    else
      date_end = DateTime.parse(dates[1]).end_of_day
      process_units =
        if date_start.nil?
          process_units.are_separates.filter_by_budget_id(Budget.joins(:process_units).where('process_units.created_at <= ?', date_end).pluck(:id))
        else
          process_units.are_separates.filter_by_budget_id(Budget.joins(:process_units).where('process_units.created_at BETWEEN ? AND ?', date_start, date_end).pluck(:id))
        end
    end
    process_units
  end





  def filter_sSearch_date_sold(process_units)
    dates = params[:sSearch_7].split('-yadcf_delim-')
    date_start = DateTime.parse(dates[0]).beginning_of_day unless dates[0].blank?
    if dates.count == 1
      process_units = process_units.where('units.date_sold >= ?', date_start)
    else
      date_end = DateTime.parse(dates[1]).end_of_day
      process_units =
        if date_start.nil?
          process_units.where("units.date_sold <= ?", date_end)
        else
          process_units.where(
            "units.date_sold >= :start_date  AND units.date_sold <= :end_date ",
            start_date: date_start, end_date: date_end
          )
        end
    end
    process_units
  end

  def filter_sSearch_handings_created_at(process_units)
    dates = params[:sSearch_7].split('-yadcf_delim-')
    date_start = DateTime.parse(dates[0]).beginning_of_day unless dates[0].blank?
    
    if dates.count == 1
      process_units = process_units.joins(unit: [:handings]).where('handings.created_at >= ?', date_start)
    else
      date_end = DateTime.parse(dates[1]).end_of_day
      process_units =
        if date_start.nil?
          process_units.joins(unit: [:handings]).where("handings.created_at <= ?", date_end)
        else
          process_units.joins(unit: [:handings]).where(
            "handings.created_at >= :start_date  AND handings.created_at <= :end_date ",
            start_date: date_start, end_date: date_end
          )
        end
    end
    process_units
  end



  def filter_Ssearch_status(process_units)
    if params[:sSearch_2].present? 
      handings = Handing.having_process_flow.pluck(:unit_id).uniq
      process_units = case params[:sSearch_2].downcase
        when 'proceso de separacion'
          process_units.where("units.commercial_status_id = 4 and units.independization_started_at IS NULL and units.process_flow_id IS NULL and units.custom_status_id IS NULL AND units.id NOT IN (?)", handings)
        when 'separado'
          process_units.where("units.commercial_status_id=5 and process_units.completed='t' and units.independization_started_at IS NULL and units.process_flow_id IS NULL and units.custom_status_id IS NULL AND process_units.active = 't' AND units.id NOT IN (?)", handings)
        when 'proceso de aprobación'
          process_units.filter_by_budget_id(Budget.joins(:unit, :process_units).where("units.commercial_status_id=6 AND process_units.completed = 'f' and units.independization_started_at IS NULL and units.process_flow_id IS NULL and units.custom_status_id IS NULL AND units.id NOT IN (?)", handings).pluck(:id))
        when 'aprobado'
          process_units.filter_by_budget_id(Budget.joins(:unit, :process_units).where("units.commercial_status_id=7 AND process_units.completed = 't' and units.independization_started_at IS NULL and units.process_flow_id IS NULL and units.custom_status_id IS NULL AND units.id NOT IN (?)", handings).pluck(:id))
        when 'proceso de venta'
          process_units.filter_by_budget_id(Budget.joins(:unit, :process_units).where("units.commercial_status_id=8 AND process_units.completed = 'f' and units.independization_started_at IS NULL and units.process_flow_id IS NULL and units.custom_status_id IS NULL AND units.id NOT IN (?)", handings).pluck(:id))
        when 'vendido'
          process_units.filter_by_budget_id(Budget.joins(:process_units, unit: [:handings]).where("units.commercial_status_id=9 AND process_units.completed = 't' and units.independization_started_at IS NULL AND units.handing = 'f' AND handings.handing = 'f' and units.custom_status_id IS NULL AND units.id NOT IN (?)", handings).pluck(:id))
        when 'entregado'
          process_units.filter_by_budget_id(Budget.joins(unit: [:handings]).where("handings.status = 6 AND units.custom_status_id IS NULL").pluck(:id))
        when 'proceso de entrega'
          process_units.filter_by_budget_id(Budget.joins(:process_units, unit: [:handings]).where("units.commercial_status_id=9 AND process_units.completed = 't' AND handings.handing = 't' AND units.custom_status_id IS NULL AND handings.personalization = 'f'").pluck(:id))
        when 'disponsible'
          process_units
        else
          custom_status = CustomStatus.where(name: params[:sSearch_2]).first
          if custom_status            
            if handings.blank?
              process_units.joins(:unit).where("units.custom_status_id = #{custom_status.id}")
            else
              process_units.joins(:unit).where("units.custom_status_id = #{custom_status.id} AND units.id NOT IN (?)", handings)
            end
          else
            process_units
          end
      end
    end
    process_units
  end

end