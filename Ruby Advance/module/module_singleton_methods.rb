module Simpsons
  def homer; end
  module_function :homer

  instance_eval do
    def bart; end
  end
  
  def self.hi
    'hi'
  end
  class << self
    def hello
      'hello'
    end
  end
end

class NewAge
  include Simpsons
end

p Simpsons.singleton_methods
