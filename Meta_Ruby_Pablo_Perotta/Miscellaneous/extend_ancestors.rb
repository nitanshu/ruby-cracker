module Stuff
  def self.hi
    'hey there partner'
  end
end

class Lamp
  extend Stuff
end

Lamp.ancestors # [Lamp, Object, Kernel, BasicObject]
Lamp.singleton_class.ancestors # [#<Class:Lamp>, Stuff, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]