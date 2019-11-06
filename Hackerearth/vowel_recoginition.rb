t= gets.chomp.to_i
k=[]
t.times do
k << gets.chomp.split('')
end
k.each do |a|
  sum =0
  b=[]
  i=0
  while i<a.length && !a[i+1].nil?
  tmp = a[i]
  j=i+1
  b << a[i]
  while j < a.length && !a[j].nil?
    tmp = tmp + a[j]
    unless b.include?(tmp)
      b << tmp
    end
    j+=1
  end
  i+=1
end
b.each{|d| sum = sum + d.scan(/['a','e','i','o', 'u', 'A', 'E', 'I', 'O', 'U']/).length}
p sum
end
