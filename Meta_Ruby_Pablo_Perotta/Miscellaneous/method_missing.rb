class A
  def method_missing(name, *args) #it is a private instance method of a BasicObject Class
    p "#{name} is called with #{args.join(',')} which is not present in the instance scope"
  end

  def self.method_missing(name, *args)
    p "#{name} is called with #{args.join(',')} which is not present in the instance scope"
  end


  def my_method
    p 'I am calling my_method'
  end
end
