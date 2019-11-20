class C
  @@v = 1
end

class D < C
  def my_method; @@v; end
end
D.new.my_method  # => 1

@@v = 1
class MyClass
  @@v = 2
end
@@v  # => 2