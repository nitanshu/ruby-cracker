class MyClass
  def initialize(value)
    @x = value
  end

  def my_method
    @x
  end
end
object = MyClass.new(1)
m = object.method :my_method
m.call
m.to_proc.call
object.to_proc  # Undefined method
