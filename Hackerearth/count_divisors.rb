input = gets.chomp.split(' ').map(&:to_i)
l= input.first
r= input[1]
k = input.last
count=0
(l..r).each do |d|
  divide = d/k.to_f
  if divide.floor == divide
    count+=1
  end
end
p count