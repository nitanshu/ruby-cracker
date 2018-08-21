class Parent
  def say
    puts "I'm the parent"
  end
end

class Child < Parent
  def say(message)
    super()
  end
end