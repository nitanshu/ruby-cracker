class MyClass2
  def my_attribute=(value)
    @my_attribute = value
  end

  def my_attribute
    @my_attribute
  end
end
obj = MyClass2.new
obj.my_attribute = 'x'
obj.my_attribute # => "x"