# Finding Divisors

t= gets.chomp.to_i
n=[]
t.times {n << gets.chomp.to_i}
n.each do |d|
  sum=0
  1.upto(d) do |e|
    unless e == d
      if d%e == 0
        sum = sum + e
      end
    end
  end
  puts sum
end
