module Stuff
  def self.hi
    'hey there partner'
  end
end

class Lamp
  include Stuff
end

Lamp.ancestors #[Lamp, Stuff, Object, Kernel, BasicObject]
Lamp.singleton_class.ancestors #[#<Class:Lamp>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]