 if request.xhr? && (not params[:page].present?)
      @articles = case [params[:search] != '', params[:speciality_id] != 'All Speciality']
                    when [true, true]
                      logger.info " i am in both true============="
                      speciality = Speciality.where(name: params[:speciality_id]).take
                      Article.solr_search { fulltext params[:search] }.results
                          .select { |article| article.speciality == speciality }
                    when [false, true]
                      logger.info " i am in both false true============="
                      Article.where('id in (?)',current_user.journals
                                                    .where(speciality_id: Speciality.where(name: params[:speciality_id]).take.id)
                                                    .collect(&:article_ids).flatten)
                    when [true, false ]
                      logger.info " i am in both true  false============="
                      Article.solr_search { fulltext params[:search]
                      paginate :page => 1, :per_page => 10
                      }.results
                    when [false, false]
                      logger.info " i am in both false false============="
                      current_user.articles
                  end
    else
      @articles = (if params[:journal_id].present?
                     Article.where(journal_id: params[:journal_id])
                   elsif params[:speciality_id].present?
                     Article.where('id in (?)',current_user.journals
                                                   .where(speciality_id: params[:speciality_id])
                                                   .collect(&:article_ids).flatten)
                   else
                     current_user.articles
                   end
      ).includes([:journal, :speciality]).order(dc_date: :desc).page(params[:page])
    end





<% if @articles.empty? %>
$('div.articles').html('No article found with this name');
<% else %>
$('div.articles').html('<%=j render partial: 'articles/article', collection: @articles, locals: {list_type: 'journals', article: @articles} %>')
<% end %>






