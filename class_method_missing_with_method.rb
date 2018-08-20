class Monster
  private
  def method_missing(name, *args)
    "blah monster, attack!"
  end
end

krumm = Monster.new
krumm.method :boo
