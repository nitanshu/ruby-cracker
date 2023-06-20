module Singer
  def self.included(base)
    base.extend(ClassMeth)
  end

  def song
    puts '-------song'
  end

  module ClassMeth
    def comp
      puts '=========comp'
    end
  end
end

module Singer
  class Eminem
    def love_the_way
      puts '--------love the way you lie'
    end
  end
end

module A
  module C
    def c
      puts '---------c'
    end
  end
end

module A
  class B
    include A::C
    def b
      puts '---------b'
    end
  end
end
module Alien
  def a
    puts '-----------a'
  end
end
module Meta
  def self.included(base)
    puts "#{self}----#{base}"
    base.extend(A)
  end

  def method_in_meta
    'instance method of base class in meta'
  end
end

class Neon
  include Meta
end
