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

  end
end

class A
include M
  def he
    p self
  end
end

a=A.new
a.test