ANIMAL = 'Tiger'
module Foo
  ANIMAL = 'Python'
  class Bar
    def value1
      p ANIMAL, ' '
    end
  end
end

class Foo::Bar
  def value2
    p ANIMAL, ' '
  end
end

Foo::Bar.new.value1
Foo::Bar.new.value2
