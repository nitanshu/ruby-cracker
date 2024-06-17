class Foo
  def bar
    method1
  end

  def main_method
    method2
  end

  private

  def method1
    puts "Hi this is #{self.class}"
  end

  protected

  def method2
    puts "Hi this is #{self.class}"
  end
end

class Blah < Foo
  def main_method
    method1
  end
end

Foo.new.bar # Hi this is Foo
Blah.new.main_method # Hi this is Blah

class NewFoo < Foo
  def main_method
    method1
  end

  def call_protected_method
    method2
  end
end

NewFoo.new.main_method 
NewFoo.new.call_protected_method
