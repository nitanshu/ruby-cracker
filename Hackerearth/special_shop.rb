t = gets.chomp.to_i
t.times do
  n, a, b = gets.chomp.split.map(&:to_i)
  i=0
  j=n
  c= []
  while i <= n && j >= 0
    c<< a*i**2 + b*j**2
    i+=1
    j-=1
  end
  puts c.min
end
