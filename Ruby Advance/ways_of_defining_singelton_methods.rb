class SingletonExample
  class << self
    def singleton_method1
      p 'singleton_method1'
    end
  end

  def self.singleton_method2
    p 'singleton_method2'
  end

  def self.singleton_method3
    p 'singleton_method3'
  end
end

module M
  def surf; end
end

class Watersport
  extend M
end
Watersport.singleton_methods # => [:surf]

s = SingletonExample.new

def s.singleton_method4
  p 'singleton_method4'
end

s.instance_eval do
  def singleton_method5
    p 'singleton_method5'
  end
end

s.define_singleton_method(:singleton_method6) do
  p 'singleton_method6'
end
