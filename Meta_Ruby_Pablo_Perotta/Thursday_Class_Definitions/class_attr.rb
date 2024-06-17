class MyClass3
  attr_accessor :a
end
obj = MyClass3.new
obj.a = 2
obj.a  # => 2

class MyClass3; end
class Class
  attr_accessor :b
end
MyClass3.b = 42
MyClass3.b # => 42

class MyClass3
  class << self
    attr_accessor :c
  end
end
MyClass3.c = 'It works!'
MyClass3.c
# => "It works!"

def MyClass.c=(value) @c = value
end
def MyClass.c @c
end

MyClass3.c = 'It works!'
MyClass3.c
# => "It works!"