a=[1003,1,2,55,91,500,3,1,1000,5,1002]
k=0
while k < 2 do 
  largest = 0 
  i=0
  puts "largest #{largest} when k is #{k} and array is #{a}" 
  while i < a.length do 
    puts "#{largest} < #{a[i]}"
    if largest < a[i]
      largest = a[i]
    end
    i+=1
  end
  a.delete(largest)
  p a
  k+=1
end