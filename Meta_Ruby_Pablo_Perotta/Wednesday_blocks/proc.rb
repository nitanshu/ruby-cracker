def a(x,y)
yield(1,2)
end

a(1,2) {|x, y| x+y}
