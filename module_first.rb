module MyModule
  def hi
    puts 'hi how are you?'
  end

  def self.how
    puts "normal how"
  end
  module_function :hi
end
