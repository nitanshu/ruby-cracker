class A
  def name
    'name'
  end
  
  def send(*arg)
    "Overrided send"
  end

  def method_missing(name, *arg, &blk)
    super unless name == :io
  end

  def respond_to_missing?(method)
    super unless name == :io
  end
end

a=A.new
a.send(:name)
a.__send__(:name)
