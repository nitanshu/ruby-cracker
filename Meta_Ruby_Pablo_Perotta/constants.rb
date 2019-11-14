module MyModule
  MyConstant = 'Outer constant'
  class MyClass
    MyConstant = 'Inner constant'
  end
end






Y = 'a root-level constant'
module M
  Y = 'a constant in M'
  Y  # => "a constant in M"
  ::Y  # => "a root-level constant"
end


