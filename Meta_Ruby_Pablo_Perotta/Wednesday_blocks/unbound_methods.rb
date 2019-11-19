module MyModule
  def my_method
    42
  end
end
unbound = MyModule.instance_method(:my_method)
unbound.class  # => UnboundMethod
