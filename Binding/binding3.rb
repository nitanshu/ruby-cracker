class Binding3
  x=14
  y=10
  @z= 5
  binding
  def hi
    x=14
    binding
  end
end
b=Binding3.new
eval("x",b)
c=Binding3.new.hi

class Binding4
  x=14
  y=10
  @z= 5
  def hi
    x=14
    binding
  end
  binding
end
b=Binding4.new