module Simpsons
  def homer; end
  module_function :homer

  instance_eval do
    def bart; end
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