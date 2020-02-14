class Dog
  def self.about
    'A dog'
  end
  def self.name
    'JIM'
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