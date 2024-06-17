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

def facto(n)
  a = 1
  n.times do |i|
    a = a *  n - i if i != 0
  end
  a
end
i=1
a=1
while i < n
fact = n
fact=fact*n-1
fact=a
i+1
n=  n-1
end
