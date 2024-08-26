module MyModule
  def my_method
    'hello'
  end
  def my_class_method
    'my class method'
  end
end

class A
  prepend MyModule
end

obj1 = Object.new
obj2 = Object.new
obj1.extend MyModule
obj1.my_method

# => "hello"
class MyClass
  extend MyModule
end
MyClass.my_method
# => "hello"