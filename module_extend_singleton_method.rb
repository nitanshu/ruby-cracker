module M
  def singleton_method
    puts 'Singelton method'
  end
end

class A
  extend M

  def instance_method
    p 'instance method of class A'
  end
end

