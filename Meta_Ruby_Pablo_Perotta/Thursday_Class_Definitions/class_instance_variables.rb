class MyClass1
  @my_var = 1 # this is a class instance variable
  def self.read; @my_var; end
  def write; @my_var = 2; end
  def reader; @my_var; end
end

class Sub < MyClass1

end
s=Sub.new
Sub.instance_variable_get('@my_var')

MyClass1.instance_variable_get('@my_var')
obj = MyClass1.new
obj.read # => Undefined method read
obj.write 
obj.read  # => 2
MyClass.read # => 1


