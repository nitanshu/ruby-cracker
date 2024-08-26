def a_method(a_class)
  a_class.class_eval do
    puts "Hello #{self} class"
    def method_in_a_class
      puts "method_in_a_class"
    end
  end
end

class A

end
a_method(A)

A.instance_eval do
  def _class_method_
    'a'
  end
end

A.class_eval do
  def _instance_method_
    'b'
  end
end