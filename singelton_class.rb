class A
  def hello
    p "hello from the instance method"
  end
end
a= A.new
def a.hello2
  p "hello 2 from the singelton method"
end
a.hello2

