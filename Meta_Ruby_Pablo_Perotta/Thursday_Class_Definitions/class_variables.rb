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

class ClassVariableExample
  @@terra =1
  def initialize
    @@terra = @@terra+1
  end

  def check_count
    @@terra
  end
end

class Mille
  @@terra= 4
  def te
    @@terra
  end
end