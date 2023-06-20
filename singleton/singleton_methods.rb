module Mod
  def tres() end
end

class PrivateProtectedExtended
  def self.cuatro() end
end
a = PrivateProtectedExtended.new
def a.uno() end
class << a
  extend Mod
  def dos; end
end
PrivateProtectedExtended.singleton_methods #=> [cuatro]
a.singleton_methods(false) #=> [uno, dos]
a.singleton_class.singleton_methods # => [:tres, :cuatro]
