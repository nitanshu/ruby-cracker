class MyClass
  attr_accessor :my_attr
  def initialize_attributes
    my_attr = 10
  end
end
obj = MyClass.new
obj.initialize_attributes
obj.my_attr #=> ?