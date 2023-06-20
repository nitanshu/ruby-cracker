class Human
  def Human.about; end
  def self.generation; end
  def hi; end
  instance_eval do
    def bye; end
  end
end
Human.singleton_class.instance_methods(false)
