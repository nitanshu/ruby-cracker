class A
  class << self
    instance_eval do
      def a
        puts 'a'
      end
    end

    define_method('nitanshu') do
      puts 'nitanshu verma'
    end

    class_eval do
      def b
        puts 'b'
      end
      define_method('test') do |param|
        puts "param is #{param}"
      end
    end
  end
end

A.singleton_class.a
A.singleton_class.methods(false)
A.singleton_methods
