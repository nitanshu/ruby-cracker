class ClassMethods
  def self.something
    puts "something mean"
  end

  def self.elsething
    something
  end

  def check_override
    'checking override up'
  end

  def check_override
    'checking override below'
  end
end
