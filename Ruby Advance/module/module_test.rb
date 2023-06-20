module NumberStuff
  def random
    rand(1_000_000)
  end
end

module UsefulFeatures
  def self.class_name
    self.class.to_s
  end
end

class Person
  include UsefulFeatures
  include NumberStuff
end

p = Person.new
p.random
Person.class_name
