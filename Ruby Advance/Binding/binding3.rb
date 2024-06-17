class Binding3
  x = 14
  y = 10
  @z = 5
  binding
  def hi
    x = 14
    binding
  end
end
b = Binding3.new
eval('x', b, __FILE__, __LINE__)
c = Binding3.new.hi
