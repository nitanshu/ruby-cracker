begin
puts 2/0
rescue
  puts $!
puts "retry block"
else
puts "i am in else part"
ensure
puts "ensure part is called"
end
