class MyClass
  def my_method
    puts "my_method is called within Myclass"
  end
end

class YourClass < MyClass

end

c=YourClass.new
c.my_method

YourClass.ancestors # => [YourClass, MyClass, Object, Kernel, BasicObject]
