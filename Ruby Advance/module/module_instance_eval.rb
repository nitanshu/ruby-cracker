module Simpsons
  def homer
    'homer'
  end
  module_function :homer

  instance_eval do
    def bart
      'bart'
    end
  end
  class_eval do
    def module_class_eval
      p 'module class eval'
    end
  end
end

class Lily
  extend Simpsons
end
Simpsons.singleton_methods
Simpsons.homer
Lily.module_class_eval
Simpsons.bart
Lily.homer # Error
