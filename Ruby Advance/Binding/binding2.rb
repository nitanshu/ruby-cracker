class Binding2
  def hi
    x = 5
    binding
  end
end
b = Binding2.new.hi
p eval('x', b, __FILE__, __LINE__)
