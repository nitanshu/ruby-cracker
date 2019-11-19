p=Proc.new{|x,y| [x,y]}

p.call(1) # => [1,nil]

#--------------------------
l = ->(a,b){[a,b]}
l.call(1,2)
l.call(1) # ArgumentError