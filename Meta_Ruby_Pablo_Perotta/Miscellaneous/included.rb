module M
  def self.included(base)
    p "base included is #{base}"
    base.class_eval do
      def test
        p 'test'
      end
    end
  end
  def self.extended(base)
    p "base extended is #{base}"
    base.instance_eval do
      def base_class_method
        'this is a a class method'
      end
    end
  end

  def test_method
    'test method in module M'
  end
end

class A
include M
  def he
    p self
  end
end

a=A.new
a.test # test
a.test_method # 'test method in module M'


class B
  extend M
  def test_method
    'test method in B'
  end
end
b= B.new
b.test_method
B.base_class_method