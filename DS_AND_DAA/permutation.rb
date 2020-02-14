b= []
a= gets

a.to_i.times do
  b << gets.split(' ')
end
b.each do |d|
  puts d.first.chars.permutation.map(&:join).include?(d.last)? 'YES': 'NO'
end
Queue