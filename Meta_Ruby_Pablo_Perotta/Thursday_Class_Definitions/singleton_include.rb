module MyModule
  def my_method; 'hello'; end
end
obj = Object.new
class << obj
  include MyModule
end
obj.my_method
obj.singleton_methods
# => "hello"
# => [:my_method]