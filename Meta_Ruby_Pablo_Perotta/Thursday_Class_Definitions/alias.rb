class MyClass4
  def my_method; 'my_method()'; end
  alias_method :m, :my_method
end
obj = MyClass4.new
obj.my_method
# => "my_method()"
obj.m
# => "my_method()"