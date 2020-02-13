def a_method(a, b)
  a + yield(a, b)
end
a_method(1, 2) {|x, y| (x + y) * 3 }  # => 10

def b_method(a,b)
  yield(a) if block_given?
end

b_method(1,2) # nil