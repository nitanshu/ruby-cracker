n=gets.to_i
m=gets.to_i
x=1
y=1
steps = 0

if n > m 
  i = n
else
  i = m
end
input1= n
input2 =m 

while i > 0
  puts "index #{i}"
  if n > m
    puts "n #{n} is greater than m #{m} and x value is #{x} and y value is #{y}"
    x= x
    y=x+y
    n=x
    m=y
    steps +=1 
    if x == input1 && m == input2
      break
      p steps
    end
  elsif m > n
    puts "m #{m} is greater than n #{n} and x value is #{x} and y value is #{y}"
    x= x+y
    y=y
    n=x
    m=y
    steps +=1
    if x == input1 && m == input2
      p steps
      break
    end
  else 
    steps  = -1
    break
  end
  i-=1
end
p steps

