n = gets.chomp
s = []
not_prime_array = []
s = gets.chomp.split(' ').map(&:to_i)
i = 0, j = 0
for i in s
  for j in s
    if i != j
      i = i.to_f
      j = j.to_f
      r = i / j

      not_prime_array.push(i) if r.is_a?(Integer) && !not_prime_array.include?(i)
    end
    j += 1
  end
  i += 1
end
p s - not_prime_array
