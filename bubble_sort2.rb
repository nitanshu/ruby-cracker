a=[10, 9, 1, 4, 11]
i=0
while i < a.length-1 do
  j=0
  while j < a.length-1 do
    p j
    p a[j]
    if a[j] > a[j+1]
      temp= a[j]
      a[j] = a[j+1]
      a[j+1] = temp
    end
    j+=1
  end
  p i
  i+=1
end

a.min