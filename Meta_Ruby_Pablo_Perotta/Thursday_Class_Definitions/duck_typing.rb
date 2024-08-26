class Duck
  def quack
    puts 'Duck quack'
  end
  def swim
    puts 'Duck swim'
  end
end
class Goose
  def quack 
    puts 'Goose quack'
  end
  def swim
    puts 'Goose swim'
  end
end 
d=Duck.new
d.quack
g=Goose.new
g.quack
