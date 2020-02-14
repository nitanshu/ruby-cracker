h = {}
class Sublime
  @fav = 'caress me down'
  def sing(obj)
    obj.instance_variable_set(:@greeting, 'mucho gusto')
    obj.instance_variable_set(:@name, 'me llamo brad lee')
  end
end
Sublime.instance_variables
s = Sublime.new
s.sing(h)
p s.instance_variables
p "***"
p h.instance_variables