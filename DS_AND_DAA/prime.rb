n = gets
n = n.to_i
a = (2..n).to_a
i = 2
np = []
while i <= n
  j = 2
  while j <= i
    if i != j && (i % j).zero?
      np << i
      break
    end
    j += 1
  end
  i += 1
end
prime = a - np
puts prime.join(' ')
