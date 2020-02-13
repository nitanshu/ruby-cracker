class MyClass
  def initialize
    @v = 1
  end
end
obj = MyClass.new
obj.instance_eval do
  self  # => #<MyClass:0x3340dc @v=1>
  @v  # => 1
end

v = 2
obj.instance_eval { @v = v }
obj.instance_eval { @v }  # => 2

class A
  instance_eval do
    def class_method
      'this_method_is_class_method'
    end
  end
  class_eval do
    def instance_method
      'this method is instance method of class A'
    end
  end
end

a= A.new

a.instance_eval do
  def a_instance_method
    'a instance method'
  end
end

a.class_eval do
  #will throw error you cannot create a class_eval on the already instance of an A class
end