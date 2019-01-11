puts "please enter the elements in an array like this 2 4 1 3"
a = gets.chomp.split(' ').map(&:to_i)
puts "you entered an array #{a}"
m = a.inject(:+)/a.size
a =a.sort
puts "sorted array is #{a}"
puts "mean value is #{m}"
a.each_with_index do |d, i|
  if d > m
    puts "this index where #{i}"
    break
  end
end