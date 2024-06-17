n = gets.to_i
i = 1
fact = 1
while i <= n
  fact *= i
  i += 1
end
p fact

def fact(n)
  fact = n
  i = 1
  while i < n
    fact *= (n - i)
    i += 1
  end
  fact
end
