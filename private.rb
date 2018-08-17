class Surfer
  def speak
    "My hair is #{self.hair}"
  end

  private

  def hair
    'golden'
  end
end

dude = Surfer.new
p dude.speak