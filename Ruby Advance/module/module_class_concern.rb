module Singer
  def self.included(base)
    base.extend(ClassMeth)
  end
def song
  puts "-------song"
end
  module ClassMeth
    def comp
      puts "=========comp"
    end
  end
end

module Singer
  class Eminem
    def love_the_way
      puts "--------love the way you lie"
    end
  end
end


module A
  def a
    puts "-----------a"
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


