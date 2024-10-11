def passing_proc(x)
  x + yield(x)
end

p= Proc.new {|x| x*x}

p.call(2)
passing_proc(3, &p)


def a(x,y)
  yield(x,y)
end

a(1,2) {|x, y| x+y}

def b(x,y, &blk)
  blk.call(x,y)
end

b(1,2) {|x, y| x+y}

u=1
p = proc { u}
p.call
u=3
def i
  u=2
  p=proc{u}
  p.call
end