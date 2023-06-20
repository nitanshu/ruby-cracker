class Nit
  def met
    puts 'met from nit'
  end
end
n = Nit.new
class << n
  def test_n
    puts 'test n'
  end

  def test_a
    puts 'test 1'
  end

  def test_b
    puts 'test b'
  end

  instance_eval do 
    def new_method
      'new method'
    end
  end

  class_eval do
    def instance_method
      'instance method'
    end
  end
end

n.singleton_class.new_method
