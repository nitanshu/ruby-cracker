module MyModule
  def my_method
    42
  end
end

class A
  include MyModule
end
unbound = MyModule.instance_method(:my_method)
unbound.class  # => UnboundMethod


String.class_eval do
  define_method :another_method, unbound
end
"abc".another_method  # => 42

# use instance_method for unbinding the method
unbound = MyModule.unbind :my_method