s = gets.chomp
c = s.chars
j = 1
while j <= c.length / 2
  temp = c[j - 1]
  c[j - 1] = c[c.length - j]
  c[c.length - j] = temp
  j += 1
end
puts c.join('') == s ? 'YES' : 'NO'

a = 'abccba'.chars
i = 0
j = a.length - 1
while i < j
  if a[i] != a[j]
    puts 'Not a palindorme'
    break
  else
    d  = j - i
    if a.length.odd? && d == 2 || a.length.even? && d == 1
      puts 'palindrome'
    end
  end
  i += 1
  j -= 1
end

def palindrome?(str)
  i = 0
  arr = str.split('')
  j = arr.length - 1
  while i < j
    a = arr[i] == arr[j]
    break if a == false

    i += 1
    j -= 1
  end
  a
end
