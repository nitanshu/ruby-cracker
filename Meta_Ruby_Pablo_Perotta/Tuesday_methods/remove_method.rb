  # undef_method Prevents the current class from responding to calls to the named method.
  # Contrast this with remove_method, which deletes the method from the particular class;
  # Ruby will still search superclasses and mixed-in modules for a possible receiver.
  # String arguments are converted to symbols.

class Parent
  def hello
    puts "In parent"
  end
end
class Child < Parent
  def hello
    puts "In child"
  end
end

c = Child.new
c.hello

class Child
  remove_method :hello  # remove from child, still in parent
end
c.hello

class Child
  undef_method :hello   # prevent any calls to 'hello'
end
c.hello