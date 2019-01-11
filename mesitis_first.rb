t=gets.chomp.to_i
a=[]
t.times {|d| a.push(gets) }
puts a.map{|e| e.chomp}.uniq.sort

