class A

def call_method_in_a
a_public_method
a_private_method
a_protected_method
end


def call_method_in_a_with_explict_reciever
self.a_public_method 
self.a_protected_method
self.a_private_method 
end

def a_public_method
puts "this is normal method"
end


private

def a_private_method
puts "this is private method"
end

protected

def a_protected_method
puts "this is protected method"
end

end



class B<A
  
def call_method_in_b
b_public_method
b_private_method
b_protected_method
end

def call_method_in_b_with_explict_reciever
self.b_public_method
self.b_private_method
self.b_protected_method
end

def call_method_in_a
a_public_method
a_private_method
a_protected_method
end


def b_public_method
puts "this is b_normal_method"
end

private
def b_private_method
puts "this is b_private_method"
end

protected
def b_protected_method
puts "this is b_protected_method"
end

end
