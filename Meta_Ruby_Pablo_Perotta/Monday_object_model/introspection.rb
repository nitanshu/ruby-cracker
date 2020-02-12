class Greeting
  def initialize(text)
    @text = text
  end
  def welcome
    @text
  end
end
my_object = Greeting.new("Hello")
#Intorspection

my_object.class
my_object.class.instance_methods(false) #[:welcome]
my_object.instance_variables #[@text]