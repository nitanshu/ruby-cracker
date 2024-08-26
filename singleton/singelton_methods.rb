class Dog
  def self.about
    'A dog'
  end
  def self.name
    'JIM'
  end
  instance_eval do 
    def how
      'how'
    end
    puts  "======== inside instance_eval self is #{self}"
    def self.know
      'know'
    end
    class << self 
      puts  "========inside instance_eval -> class << self is #{self}"
      def dont_know
        'dont_know'
      end

      def self.how_do_you_know
        'how_do_you_know'
      end
      class_eval do 
        puts  "========inside instance_eval -> class << self -> class_eval self is #{self}"
        def you_will_not_get_this
          'you_will_not_get_this'
        end

        def self.def_not
          'def_not'
        end
      end
    end
  end
  class << self
    def singleton_class_instance_method
      'singleton_class_instance_method'
    end

    class << self
      def singleton_class_singleton_method
        'singleton_class_singleton_method'
      end
    end
  end
end

Dog.singleton_class.instance_methods.include? :about
Dog.singleton_class.singleton_methods
Dog.singleton_class.singleton_class_singleton_method
#Singleton class instance methods are class methods for its Object class 
# but Singleton class class methods are only accessible by singelton class 