a=[10, 9, 1, 4, 11]
i=0
while i < a.length-1 do
  j=0
  while j < a.length-1 do
    puts "Comparsion of  #{a[j]} and #{a[j+1]}"
    if a[j] > a[j+1]
      temp= a[j]
      a[j] = a[j+1]
      a[j+1] = temp
      puts "Swapping happened between #{a[j]} and #{a[j+1]}"
    else
      puts "No Swapping happened between #{a[j]} and #{a[j+1]}"
    end
    j+=1
  end
  p i
  i+=1
end

# Time Complexity is O(n^2)
