def yield_test
  test = 'sdfs'
  yield(test)
end

yield_test {|x| puts x}

def yield_without_block
  yield if block_given?
end

yield_without_block{|x, y| p x+y}

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