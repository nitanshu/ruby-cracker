class  MyClass
  @s = 2
  def my_method
    @v = 1
  end
end
obj = MyClass.new
obj.class # MyClass
obj.instance_variables # []
obj.methods #[:my_method]
obj.my_method
obj.instance_variables # [@v]
MyClass.instance_variables
