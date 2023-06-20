class ClassMethodMissing
  def self.class_methods
    puts 'this is class method'
  end

  def self.method_missing(_name, *_args)
    puts 'this is how i handle the method missing'
  end
end

ClassMethodMissing.test
