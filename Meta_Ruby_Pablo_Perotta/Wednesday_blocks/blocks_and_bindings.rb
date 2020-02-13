def my_method
  x = "Goodbye"
  yield("cruel")
end
x = "Hello"
my_method {|y| "#{x}, #{y} world" } # => "Hello, cruel world"
=begin
When you create the block, you capture the local bindings, such as x . Then
you pass the block to a method that has its own separate set of bindings. In
the previous example, those bindings also include a variable named x . Still,
the code in the block sees the x that was around when the block was defined,
not the method’s x , which is not visible at all in the block.
=end
