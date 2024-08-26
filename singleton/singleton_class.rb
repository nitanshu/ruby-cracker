class SingletonTest
  instance_eval do 
    p self
  end
  class_eval do
    p self
  end
  self.instance_eval do 
    p self
  end
  self.class_eval do
    p self
  end
  class << self
    p self
    p self == SingletonTest.singleton_class
    def test1
      p self
    end
  end

  class << self
    p self
    instance_eval do 
      p self
    end
    class_eval do 
      p self
    end
    class << self
      p self
      class << self
        p self
        def self.get_it
          'get it '
        end
      end
    end
  end
end

SingletonTest.singleton_class.singleton_class.singleton_class.get_it