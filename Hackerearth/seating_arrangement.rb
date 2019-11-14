n=gets.to_i
v= []
n.times do
  v << gets.to_i
end
total_ws = [1]
total_ms = [2]
total_as = [3]
count = 1
(1..108).step(1) do |d|
  case count
    when 1
      d.odd? ? total_ws << d+5 : total_ws << d+1
      count +=1
    when 2
      d.odd? ? total_ms << d+3 : total_ms<< d+3
      count +=1
    when 3
      d.odd? ? total_as << d+1 : total_as<< d+5
      count += 1
    when 4
      d.odd? ? total_as << d+1 : total_as<< d+5
      count +=1
    when 5
      d.odd? ? total_ms << d+3 : total_ms<< d+3
      count +=1
    when 6
      d.odd? ? total_ws << d+5 : total_ws << d+1
      count = 1
    else
  end
end
v.each do |d|
  if total_ws.include?(d)
    puts d.odd? ? "#{d+11} WS" : "#{d+1} WS"
  end
  if total_ms.include?(d)
    puts d.odd? ? "#{d+3} MS" : "#{d+9} MS"
  end
  if total_as.include?(d)
    puts d.odd? ? "#{d+7} AS" : "#{d+5} AS"
  end
end



