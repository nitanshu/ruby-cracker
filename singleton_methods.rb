module Mod
  def tres() end
end
class B
  def B.cuatro() end
end
a = B.new
def a.uno() end
class << a
  include Mod
  def dos()
  end
end
B.singleton_methods         #=> ?
a.singleton_methods(false)  #=> ?
a.singleton_methods #=> ?