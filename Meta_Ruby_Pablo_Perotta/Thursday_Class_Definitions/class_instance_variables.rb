class MyClass1
  @my_var = 1 # this is a class instance variable
  def self.read; @my_var; end
  def write; @my_var = 2; end
  def read; @my_var; end
end
obj = MyClass1.new
obj.read # => nil
obj.write
obj.read  # => 2
MyClass.read # => 1


