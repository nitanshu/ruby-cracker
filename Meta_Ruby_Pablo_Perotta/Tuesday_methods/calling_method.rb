class MyClass
  def my_method(my_arg)
    p my_arg
    my_arg * 2
  end
end
obj = MyClass.new
obj.method(:my_method).call(3) # => 6
obj.send(:my_method, 6) # => 12
