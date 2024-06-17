class Animal
  def some_method
    method_1
  end

  private

  def method_1
    puts "Hi I am a #{self.class}"
  end

  protected

  def method_2
    "Hi I am a #{self.class}"
  end
end

class Dog < Animal
  def some_breed
    method_1
  end

  def another_breed
    method_2
  end
end

class Cat < Animal
  def meow
    self.method_1
  end

  def speak
    self.method_2
  end
end

class Lion < Animal
  def my_roar
    Cat.new.speak
  end

  def another_roar
    Dog.new.method_2 # Here it will successfully call the protected method
  end

  def my_failed_roar
    Cat.new.method_1 # Here it wil fail to call private method
  end
end
a= Animal.new
a.some_method
Lion.new.my_roar
Dog.new.some_breed
Cat.new.my_method
Lion.new.another_roar
