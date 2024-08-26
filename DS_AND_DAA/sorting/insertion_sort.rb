a=[1,45,6,0,53,2]
i=0
while i< a.length
  j=i
  while j > 0
    puts "picked element is #{a[j]} comparing with #{a[j-1]}"
    if a[j] < a[j-1] 
      puts "Swapping will happen between #{a[j-1]} and #{a[j]}"
      temp = a[j-1]
      a[j-1] = a[j]
      a[j] = temp
    end
    puts "After iteration of j #{j} and i #{i} array looks like #{a}"
    j-=1
  end
  i+=1
end
puts "Final After Insertion sort array is #{a} with Time Complexity is O(n^2)"
