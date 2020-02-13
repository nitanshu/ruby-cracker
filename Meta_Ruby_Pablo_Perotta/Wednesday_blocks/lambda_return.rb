

# ------------------------

def double1(callable_object)
  callable_object.call * 2
end
l = lambda { return 10 }
double1(l) # => 20

def double_trouble
  l = ->{return 10}
  result = l.call
  result*2 #=> 20
end

