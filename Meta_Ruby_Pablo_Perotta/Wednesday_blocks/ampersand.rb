def my_method(a, b )
  block_given? ? yield(a,b) : a + b
end

my_method(1,3){|x,y| x+y}

def my_math(a,b, &block)
  math(a, b, &block)
end
def math(a, b)
  yield(a,b)
end
my_math(1,2){|x,y| x*y}