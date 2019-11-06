t=gets.chomp.to_i
inputs = []
t.times { inputs << gets.chomp.split(' ').map(&:to_i) }
inputs.each {|input| puts input.last%input.first == 0 ? 'Yes' : 'No' }

