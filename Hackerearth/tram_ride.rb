n = gets.to_i
start = gets.to_i
finish = gets.to_i
ticket_cost = gets.chomp.split().map(&:to_i)

f_cost=0
r_cost=0
while start <= finish && n >= start
  f_cost = f_cost + ticket_cost[start - 1]
  r_cost = r_cost + ticket_cost[n - 1]
  start += 1
  n -= 1
end
p f_cost < r_cost ? f_cost : r_cost

