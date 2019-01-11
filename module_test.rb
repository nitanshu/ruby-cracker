module NumberStuff
def random
rand(1000000)
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
