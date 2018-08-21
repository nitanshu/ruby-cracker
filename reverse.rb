a=[1,2,3,4,5,6,7,8]
i=1
while i <= a.length/2 do
  temp = a[i-1]
  a[i-1] =  a[a.length-i]
  a[a.length-i] = temp
  i+=1
end



