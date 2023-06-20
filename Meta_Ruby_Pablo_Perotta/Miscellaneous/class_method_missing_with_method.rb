class Monster
  private

  def method_missing(_name, *_args)
    'blah monster, attack!'
  end
end

krumm = Monster.new
krumm.method :boo # Will throw error but after defining respond_to_missing? it will not
