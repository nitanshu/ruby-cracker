def a
  p = proc {return 10}
  result  = p.call
  return result*2 # unreachable code
end

def double(callable_objects)
  callable_objects.call *2
end
p = proc {return 10}
double(p) #LocalJumpError