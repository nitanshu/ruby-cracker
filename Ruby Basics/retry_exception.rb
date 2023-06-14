begin
puts "begin block"
puts 2/0
rescue Exception => e
retry
sleep 5
else
puts "i am in else part"
ensure
puts "ensure part is called"
end
