class AccessorExample
  def its_public
    puts 'its public'
  end

  def calling_protected
    its_protected
  end

  def calling_private
    its_private
  end

  private

  def its_private
    puts 'its private'
  end

  # It will not be a private method
  def self.its_private_class_method 
    puts 'its private class method'
  end

  def use_of_private
    "Hi this is private method of class #{self.class}"
  end

  protected

  def its_protected
    puts 'its protected'
  end

  # It will not be a protected method
  def self.its_protected_class_method
    puts 'its class protected method'
  end

  def use_of_protected
    "Hi this is protected method of  #{self.class}"
  end

  class << self
    private

    def singleton_private_method
      puts 'singleton private method'
    end

    def self.class_singleton_private_method
      puts 'class singleton private method'
    end

    protected

    def singleton_protected_method
      puts 'singleton protected method'
    end

    def self.class_singleton_protected_method
      puts 'class singleton protected method'
    end
  end
end

class ChildAccessorExample < AccessorExample
  def calling_parent_private_method
    its_private
    its_protected
    calling_protected
    calling_private
  end

  def call_private_with_self
    use_of_private
  end

  def call_protected_with_self
    use_of_protected
  end
end

a = AccessorExample.new
a.its_public
a.its_private
a.its_protected
a.calling_private
a.calling_protected
AccessorExample.its_private_class_method
AccessorExample.its_protected_class_method
a.send(:its_private)
a.send(:its_protected)
a.method(:its_private).call
a.method(:its_protected).call
c = ChildAccessorExample.new
c.calling_parent_private_method

AccessorExample.singleton_private_method
AccessorExample.singleton_class.class_singleton_private_method
