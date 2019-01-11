  require 'profile'
class ProfileTest
  def self.graph
    @project = Project.friendly.find 'p1-5-pages-13-0906-brannan-50-cd'
    @sources = @project.sources
    @x_axis =[]
    @data =[]
    a=[]
    @x_axis.push({name: 'Project Initiation', categories: ['Project Created'], starts_at: @project.created_at.to_f, data: [@project.created_at.to_f*1000, @project.created_at.to_f*1000]})
    @sources.map.with_index { |source, index| @x_axis.push({name: 'Source-' + (index+1).to_s, categories: (source.pdf_burst_job.image_constructor_jobs.map.with_index { |img, i| 'Tile Cutting-' + (i+1).to_s } + source.pdf_burst_job.text_extraction_jobs.map.with_index { |tid, i| 'Text Extraction-' + (i+1).to_s }).unshift('Source Uploaded', 'Pdf Burst').push('Meta Link'), starts_at: source.created_at.to_f, data: []}) }
    @project.meta_links_derivation_jobs.map { |x| a.push(x.id) if x.pdf_burst_job_id.nil? }
    a.map.with_index { |rel_link_id, rel_count| @x_axis.push({name: 'Relinking-' + (rel_count+1).to_s, categories: ['Relink-'+ (rel_count+1).to_s], starts_at: @project.meta_links_derivation_jobs.find(rel_link_id).starts_at.to_i, data: [((@project.meta_links_derivation_jobs.find(rel_link_id).starts_at).to_f*1000), ((@project.meta_links_derivation_jobs.find(rel_link_id).ends_at).to_f*1000)]}) }
    @x_axis = @x_axis.sort_by { |k| k[:starts_at] }
    @sources.each_with_index do |d, index|
      @x_axis.each do |x|
        if x[:name] == 'Source-' + (index+1).to_s
          x[:data].push([d.created_at.to_f*1000, d.updated_at.to_f*1000]).push([((d.pdf_burst_job.starts_at.to_f*1000)), ((d.pdf_burst_job.ends_at.to_f*1000))])
          d.pdf_burst_job.image_constructor_jobs.collect { |img| x[:data].push([((img.starts_at.to_f*1000)), ((img.ends_at.to_f*1000))]) }
          d.pdf_burst_job.text_extraction_jobs.collect { |text| x[:data].push([((text.starts_at.to_f*1000)), ((text.ends_at.to_f*1000))]) }
          x[:data].push([((d.pdf_burst_job.meta_links_derivation_job.starts_at.to_f*1000)), ((d.pdf_burst_job.meta_links_derivation_job.ends_at.to_f*1000))])
        end
      end
    end
    @x_axis.collect { |d| @data.push(d[:data]) }
    @data = @data.flatten.each_slice(2).to_a
  end
end



ProfileTest.graph
