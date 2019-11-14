# An instance of the Binding class is able to encapsulate the execution context of the receiver object.
# So the real purpose of this class is: Encapsulating an Execution Context and being able to access it from another Execution Context.
class A
  def method
    @x = 5
    x = 4
    binding
  end
end
abc = A.new.method
p eval("x", abc)
binding.local_variables

class B
  def binding_test
    @user = 1

  end
end

