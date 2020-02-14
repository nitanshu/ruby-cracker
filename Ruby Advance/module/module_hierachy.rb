module M
  def a
    p 'a module up'
  end
  def a
    p 'a module down'
  end
end
class A
  extend M
  def b
    p 'a up'
  end
  def b
    p 'a down'
  end
end

a=A.new
a.b
A.a