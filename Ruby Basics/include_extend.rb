module Foo
  def self.module_level_method
    puts 'Module level method'
  end
  def test
    p 'hell'
  end
end

class Bar
  extend Foo
  # include Foo
end

Foo.module_level_method
Bar.module_level_method # Error
Bar.new.test # Error
Bar.test # hell
