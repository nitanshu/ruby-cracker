class AccessorExample
  def its_public
    puts 'its public'
  end

  def calling_protected
    self.its_protected
  end

  def calling_private
    self.its_private
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

  private
  def its_private
    puts 'its private'
  end

  def self.its_private_class_method
    puts 'its private class method'
  end

  protected
  def its_protected
    puts 'its protected'
  end

  def self.its_class_protected_method
    puts 'its class protected method'
  end
end
class ChildAccessorExample < AccessorExample
  def calling_parent_private_method
    its_private
    its_protected
    calling_protected
    # calling_private #will not execute
  end
end

a = AccessorExample.new
a.its_public
a.send(:its_private)
a.send(:its_protected)
a.method(:its_private).call
a.method(:its_protected).call
a.calling_protected
a.calling_private
a.send(:calling_protected)
a.send(:calling_private)
ChildAccessorExample.new.calling_parent_private_method
AccessorExample.singleton_private_method
