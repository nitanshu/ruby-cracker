class A
  class << self
    puts "Inspect the singelton class #{self.inspect}"
  end

  def self.method
    p 'calling class method #{self.inspect}'
  end

end

