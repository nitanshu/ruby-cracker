class Singlet
  def my_method

  end
end
obj= Singlet.new
def obj.singleton_method
  "singleton method"
end
singleton_class = class << obj
  p self
end
singleton_class.class

"abc".singleton_class
# => #<Class:#<String:0x331df0>>