a = 0
b = 1
i = 0
while i < 20
  if [0, 1].include?(i)
    puts i
  else
    temp = b
    b = a + b
    a = temp
    puts b
  end
  i += 1
end
