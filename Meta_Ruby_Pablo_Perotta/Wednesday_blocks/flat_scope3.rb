my_var = "Success"
 MyClass = Class.new do
  #  Now we can print my_var here
p my_var
  define_method :my_method do
    p my_var
# ..and here
  end
end