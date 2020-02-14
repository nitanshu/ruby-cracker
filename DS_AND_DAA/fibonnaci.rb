def fibonacci(n)
  n == 0 || n ==1 ? print n : print fibonacci(n-2) + fibonacci(n-1)
end





a=0
b=1
i=0
while i < 7 do
  if i == 0 || i == 1
    p i
  else
    temp= b
    b= a+b
    a = temp
    p b
  end
  i+=1
end