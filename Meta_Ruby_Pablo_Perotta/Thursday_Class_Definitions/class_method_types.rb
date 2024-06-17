def MyClass.a_class_method; end
class MyClass
  def self.another_class_method; end
end
class MyClass
  class << self
    def yet_another_class_method; end
  end
end

class MyClass
  instance_eval do 
    def another_way_to_write_class_method
      'another_way_to_write_class_method'
    end
  end
end