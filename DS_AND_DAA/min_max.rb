n= gets.to_i
a = gets.split(' ').map(&:to_i)
max_no = a[a.length-1]
min_no = a[0]
a.each_with_index do |d, i|
  unless a[i+1].nil?
    if a[i] > a[i+1]
      max_no = a[i] if a[i] > max_no
      min_no = a[i+1] if a[i+1] < min_no
    else
      max_no = a[i] if a[i] > max_no
      min_no = a[i+1] if a[i+1] < min_no
    end
  end
end
puts "#{min_no} #{max_no}"