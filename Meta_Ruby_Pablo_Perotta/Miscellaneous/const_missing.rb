module ModuleE
  def self.const_missing(name)
    "Sorry #{name} does not exist."
  end
end
