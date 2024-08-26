class Binding3
  x = 14
  y = 10
  @z = 5
  def hi
    x = 10
    binding
  end
  binding
end
b = Binding3.new
eval('x', b, __FILE__, __LINE__)
c = Binding3.new.hi
