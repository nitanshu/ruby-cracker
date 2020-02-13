def yield_test
  test = 'sdfs'
  yield(test)
end

yield_test {|x| puts x}

def yield_without_block
  yield if block_given?
end

yield_without_block{|x, y| p x+y}

