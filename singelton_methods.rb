class Dog
  def self.about
    'A dog'
  end
  def self.name
    'JIM'
  end
end

Dog.singleton_class.instance_methods.include? :about