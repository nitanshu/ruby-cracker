class C
  def a_method
    'C#a_method()'
  end
  class << self
    def a_class_method
      'C.a_class_method()'
    end
  end
end
class D < C

end

obj = D.new
obj.a_method  # => "C#a_method()" obj class-> D superclass-> C superclass-> Object -> Kernel -> BasicObject

class << obj
  def a_singleton_method
    'obj#a_singleton_method()'
  end
end

obj.singleton_class.superclass # => D
obj.a_singleton_method # obj -singleton class-> #obj#a_singleton_method -> D -> C -> Object -> Kernel -> BasicObject



obj1 = Object.new
obj1.singleton_class  # => #<Class:#<Object:0x007fd96909b588>


C.singleton_class#<Class:C>
D.singleton_class#<Class:D>
D.singleton_class.superclass#<Class:C>
C.singleton_class.superclass#<Class:Object>

D.a_class_method #=>       'C.a_class_method()'



