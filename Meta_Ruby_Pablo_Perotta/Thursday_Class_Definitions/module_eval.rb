class B
  module_eval do 
    def hello
      'hello'
    end
  end
end
b=B.new
b.hello

#module_eval is similar to instance_eval