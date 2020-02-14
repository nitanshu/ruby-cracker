module Mod
  def tres() end
end
class PrivateProtectedExtended
  def PrivateProtectedExtended.cuatro() end
end
a = PrivateProtectedExtended.new
def a.uno() end
class << a
  extend Mod
  def dos()
  end
end
PrivateProtectedExtended.singleton_methods         #=> ?
a.singleton_methods(false)  #=> ?
a.singleton_methods #=> ?