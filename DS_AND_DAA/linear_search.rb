a=[1,2,3,4,5]
k= 3
a.each_with_index do |d, i| 
  if d==k 
    p i
    break
  end
end