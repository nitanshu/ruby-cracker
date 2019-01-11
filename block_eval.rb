class Evaluate
  fireabse_configure do
    consume_path 'dfff'
  end
end

module Dummy::Firebase
  class FirebaseConfig
    class_attribute :firebase_config
    def initialize(&block)
      instance_eval(block)
    end
  end
end

class A
  def initialize(&block)
    a=instance_eval(&block)
    p "=-=======#{self.b}"
  end
end

b=A.new do
  def a
    puts "999999999999999999999999"
  end

  def b
    p 2+2
  end
end

require 'active_support/concern'
module Mod
  extend ActiveSupport::Concern
  included do
    cattr_accessor :setting
  end
  class_methods do
    def config(&block)
      self.setting = Bod.new(&block)
    end
  end

  class Bod
    def initialize(&block)
a =      instance_eval(&block)
      p "=-======#{a.inspect}"
    end

    def god(&block)
      p block
    end
  end
end

class Tod
  include Mod
  config do
    god do
      'God is great'
    end
  end
end