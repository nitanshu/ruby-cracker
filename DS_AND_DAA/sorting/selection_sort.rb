

a=[1,0,6,0,2,2]

i=0
while i < a.length - 1
  minimum_element_index = i
  min_element = a[i]  
  j=i+1
  puts "Considering minimum element is #{min_element} at index of #{minimum_element_index}"
  while j < a.length
    if a[j] < a[minimum_element_index]
      minimum_element_index = j
      min_element = a[j]
      puts "found new minimum element is #{min_element} at index of #{minimum_element_index} at iteration #{i}"
    end
    j+=1
  end
  if i != minimum_element_index
    puts "Swapping will happen between #{a[i]} and #{a[minimum_element_index]}"
    temp = a[i]
    a[i] = a[minimum_element_index]
    a[minimum_element_index] = temp
  end
  puts "After swapping array becomes #{a}"
  i+=1
end
