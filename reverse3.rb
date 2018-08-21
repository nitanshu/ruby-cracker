a=[1,2,3,4,5,6]
b=[]
loop do
  b << a.pop
  break if a.empty?
end