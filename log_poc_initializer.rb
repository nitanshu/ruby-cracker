timestamps = []
process_id =[]
record_id =[] 
instance_id =[]
description = []
log_records =[]
log_hash = {}
time_record={}
time_diff ={}

File.readlines('short_instance.log').each do |record_detail|
	timestamps.push(record_detail.match(/[0-9]{1,4}-[0-9]{1,4}-[0-9]{1,4}T+[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}.[0-9]{1,6}/)[0])
	process_id.push(record_detail.match(/#[0-9]{1,4}/)[0])
	record_id.push(record_detail.match(/\[[0-9]\]/)[0].match(/[0-9]/)[0])
	instance_id.push(record_detail.match(/\[]|\[i-\w*]/)[0])
	description.push(record_detail.chomp.match(/:\s\w[\w\s]*[\W\w]*/)[0])
	log_records.push([record_detail.match(/\[[0-9]\]/)[0].match(/[0-9]/)[0], record_detail.match(/[0-9]{1,4}-[0-9]{1,4}-[0-9]{1,4}T+[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}.[0-9]{1,6}/)[0], record_detail.match(/#[0-9]{1,4}/)[0], record_detail.match(/\[]|\[i-\w*]/)[0], record_detail.chomp.match(/:\s\w[\w\s]*[\W\w]*/)[0]])
end

record_id.uniq.each do |d|
 log_hash.merge!("#{d}" => {})
end

log_hash.each do |k,v|
  log_records.each do |r|
    if v.has_key?("#{r[4]}") && k == r.first
       v["#{r[4]}"].last.push("#{r[1]}")
    else
    v.merge!("#{r[4]}" => ["#{r[2]}", "#{r[3]}", ["#{r[1]}"]]) if k == r.first 
    end
  end
end

log_hash.each do |k,v|
  time_record.merge!(k => {})
  time_diff.merge!(k => {})
  li_diff.merge!(k => {})
end

log_hash.each do |k,v|
     v.each do |q,w|
        time_record.each do |l,m| 
          m.merge!(q => w.last.last) if k == l
      
       end
    end
 end

 time_record.each do |k,v|
    v.each_with_index do |(key, value), i|
       time_diff.each do |l,m|
        m.merge!(v.keys[i+1] => (Time.parse(v.values[i+1])- Time.parse(v.values[i]))*100/3600) if k ==l  rescue nil
       end
     end
  end

time_diff.each do |l,m|
    m.delete_if {|k,v| k.nil?}
end


<% @record_id.uniq.each do |record| %>
<%= record %>
<ul class="logs">
	<% @time_diff[record].each do |k,v|  %>
	<li class="timestamp" id="<%= record %>_<%= k.split(' ').join('_') %>" title="<%= k %>" style = "padding-right:<%= v %>px"><div class="data_cl"><%= "#{k}"%></div></li>
	<% end %>
</ul>

<div class='time'>
	<% @log_hash[record].each do |k,v|  %>
	<span><%= v.last.first %></span>
	<% end %>
</div>
<%@log=  @log_hash.to_json %>
<% end %>
</br>


<script type="text/javascript">
	$('.data_cl').hide();
</script>
[\w:\s]*
:\s\w[\w\s]*[\W\w]*
:\s\w[\w\s]*:|\s:value=>\d+.+\d
