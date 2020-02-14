def my_map
  return self.dup unless block_given?
  array =[]
  self.each do |elem|
    array << yield(elem)
  end
  array
end

[1,2,3].my_map{|x| x*2}
[1,2,3].my_map(&:*)