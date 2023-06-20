def yield_test
  test = 'sdfs'
  yield(test)
end

yield_test { |x| puts x }

def yield_without_block(a, b)
  yield(a, b) if block_given?
end

yield_without_block(9, 5) { |x, y| p x + y }

def add(x, y)
  yield(x, y)
end

add { |x, y| puts x + y }
