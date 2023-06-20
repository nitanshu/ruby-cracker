class MyClass
  def hi
    p 'hi this is nitanshu'
  end
end

obj = MyClass.new
obj.instance_variable_set('@x', 10)
obj.instance_variable_get('@x')
