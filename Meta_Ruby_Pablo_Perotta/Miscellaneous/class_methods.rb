class ClassMethods
  def self.something
    puts "something mean"
  end

  def self.elsething
    something
  end
  class << self
    def nothing
      elsething
    end

    def itthing
      check_override
    end
  end
  def check_override
    'checking override up'
  end

  def check_override
    'checking override below'
  end
end
