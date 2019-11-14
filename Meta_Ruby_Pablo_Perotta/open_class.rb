class D
  def x; 'x'; end
end
class D
  def y; 'y'; end
end
obj = D.new
obj.x # => "x"
obj.y # => "y"

# class D already exists, so Ruby doesn’t need to define it.
# Instead, it reopens the existing class and defines a method named y there.