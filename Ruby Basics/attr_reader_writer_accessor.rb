
class Build
  attr_reader :name
  attr_writer :age
  attr_accessor :class

  def initialize(name, age)
    @name = name
    @age = age
  end
end

