def a_method(a_class)
  a_class.class_eval do
    puts "Hello #{self} class"
    def method_in_a_class
      puts "method_in_a_class"
    end
  end
end