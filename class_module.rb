class Module
  def const_missing(name)
    "Sorry #{name} does not exist."
  end
end