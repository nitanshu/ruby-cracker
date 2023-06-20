timestamps = []
process_id = []
record_id = []
instance_id = []
description = []
log_records = []
log_hash = {}
time_record = {}
time_diff = {}

File.readlines('short_instance.log').each do |record_detail|
  timestamps.push(record_detail.match(/[0-9]{1,4}-[0-9]{1,4}-[0-9]{1,4}T+[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}.[0-9]{1,6}/)[0])
  process_id.push(record_detail.match(/#[0-9]{1,4}/)[0])
  record_id.push(record_detail.match(/\[[0-9]\]/)[0].match(/[0-9]/)[0])
  instance_id.push(record_detail.match(/\[]|\[i-\w*]/)[0])
  description.push(record_detail.chomp.match(/:\s\w[\w\s]*[\W\w]*/)[0])
  log_records.push([record_detail.match(/\[[0-9]\]/)[0].match(/[0-9]/)[0],
                    record_detail.match(/[0-9]{1,4}-[0-9]{1,4}-[0-9]{1,4}T+[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}.[0-9]{1,6}/)[0], record_detail.match(/#[0-9]{1,4}/)[0], record_detail.match(/\[]|\[i-\w*]/)[0], record_detail.chomp.match(/:\s\w[\w\s]*[\W\w]*/)[0]])
end

record_id.uniq.each do |d|
  log_hash.merge!("#{d}" => {})
end

log_hash.each do |k, v|
  log_records.each do |r|
    v.merge!(r[1] => [r[2], r[3], r[4]]) if k == r.first
  end
end

File.readlines(file_path).each do |record_detail|
  timestamps.push(record_detail.match(/[0-9]{1,4}-[0-9]{1,4}-[0-9]{1,4}T+[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}.[0-9]{1,6}/)[0])
  process_id.push(record_detail.match(/#[0-9]{1,4}/)[0])
  record_id.push(record_detail.match(/\[[0-9]\]/)[0].match(/[0-9]/)[0])
  instance_id.push(record_detail.match(/\[]|\[i-\w*]/)[0])
  description.push(record_detail.chomp.match(/:\s\w[\w\s]*[\W\w]*/)[0])
  log_records.push([record_detail.match(/\[[0-9]\]/)[0].match(/[0-9]/)[0],
                    record_detail.match(/[0-9]{1,4}-[0-9]{1,4}-[0-9]{1,4}T+[0-9]{1,2}:[0-9]{1,2}:[0-9]{1,2}.[0-9]{1,6}/)[0], record_detail.match(/#[0-9]{1,4}/)[0], record_detail.match(/\[]|\[i-\w*]/)[0], record_detail.chomp.match(/:\s\w[\w\s]*/)[0].match(/\w[\w\s]*/)[0]])
end
