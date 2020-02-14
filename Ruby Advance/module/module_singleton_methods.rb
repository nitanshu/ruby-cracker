module Simpsons
  def homer; end
  module_function :homer

  instance_eval do
    def bart; end
  end
end

p Simpsons.singleton_methods