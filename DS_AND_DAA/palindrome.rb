s=gets.chomp
c=s.chars
j=1
while j <= c.length/2 do
  temp = c[j-1]
  c[j-1] = c[c.length-j]
  c[c.length-j] = temp
  j+=1
end
puts c.join('') == s ? 'YES': 'NO'


a="abcba".chars
i=0
j= a.length-1
while i < j do
  unless a[i] == a[j]
    puts 'Not a palindorme'
    break
  end
  i+=1
  j-=1
end