class Iritate
  def self.start
    puts 'class method from start'
  end
  class << self
    def hello
      puts 'hello'
    end

    def bye
      puts 'bye'
    end
  end
  def self.end
    puts 'end the iritation'
  end
end
