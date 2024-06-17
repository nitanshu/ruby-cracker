class Person < Struct.new(:name, :last_name)
  def a_method
    'a method from person class'
  end
end

class ReligiousPerson < Person
  def initialize
    Skill = Struct.new(:Skills)
  end
  
  def b_method
    'b method from religious person class'
  end
end

class PoliticalPerson < Struct.new(*Person.members, :political_affiliation)
end

### Main ###

person = Person.new('jackie', 'jack')
p pious_person = ReligiousPerson.new('billy', 'bill', 'Zoroastrianism')
p political_person = PoliticalPerson.new('frankie', 'frank', 'Connecticut for Lieberman')

class B < Person
  def initialize(params)
    @params = params
    self.class = Struct.new(*Person.members, :skill)
  end

  def get_params
    @params
  end
end

require 'ostruct'

class Base < OpenStruct.new(:A, :B)

end
 
class ChildClass < Base

end