class ClassMethodMissing
def self.class_methods
puts 'this is class method'
end

def self.method_missing(name, *args)
super unless name ==  :class_methods
puts 'this is how i handle the method missing'
end

end

ClassMethodMissing.test
