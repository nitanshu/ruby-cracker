t = gets.to_i
n = gets.chomp.split(' ').map(&:to_i)
temp = 1
n.each do |e|
 temp=e*temp
end
fact = 0
(1..temp).each do |d|
if !((temp.fdiv(d)).to_s.split('.').last.to_i > 0)
fact = fact +1
end
end 	
p fact

