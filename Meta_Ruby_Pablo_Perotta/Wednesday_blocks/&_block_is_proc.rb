def b(x,y, &the_proc)
  p the_proc.class # Proc
  the_proc.call(x,y)
end

b(1,2) {|x, y| x+y}