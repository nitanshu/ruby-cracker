module Foo
  def self.module_level_method
    puts "Module level method"
  end
  def test
    p 'hell'
  end
end

class Bar
  extend Foo
  # include Foo
end

Bar.module_level_method
# Bar.new.test