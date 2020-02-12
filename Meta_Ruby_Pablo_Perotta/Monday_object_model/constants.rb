module MyModule
  MyConstant = 'Outer constant'
  class MyClass
    MyConstant = 'Inner constant'
  end
end

MyModule::MyConstant # Outer constant
MyModule::MyClass::MyConstant # Inner Constant




Y = 'a root-level constant'
module M
  Y = 'a constant in M'
  Y  # => "a constant in M"
  ::Y  # => "a root-level constant"
end


