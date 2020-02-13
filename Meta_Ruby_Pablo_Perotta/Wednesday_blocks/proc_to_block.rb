def my_method(greeting)
  "#{greeting}, #{yield(2,3)}!"
end
my_proc = proc { "Bill" }
my_method("Hello", &my_proc)

p = proc {|x,y| x+y}
my_method('fuck ', &p)