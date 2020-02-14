array_size= gets.chomp.to_i
_array = gets
_array = _array.chomp.split(' ').map(&:to_i)
product =1
_array.each do |number|
  product = product*number%(10**9 + 7)
end
p product