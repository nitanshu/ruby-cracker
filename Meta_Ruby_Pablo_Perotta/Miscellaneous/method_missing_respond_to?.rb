class Relax
  def method_missing(name, *args)
    super unless name == :yoga
    'Your just another fool'
  end
  def respond_to?(name)
    super unless name == :yoga
  end
end