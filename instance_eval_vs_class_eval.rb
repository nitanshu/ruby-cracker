class A


end

A.instance_eval do 
  def full_name
    'class method'
  end
end
A.full_name


A.class_eval do 
  def full_name_1
    'instance method'
  end
end

a= A.new
a.instance_eval do 
  def full_name_2
    'singleton instance method'
  end
end

a.full_name_2

A.instance_eval