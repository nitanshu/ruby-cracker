begin
  puts 'begin block'
  puts 2 / 0
rescue Exception => e
  retry
else
  puts 'i am in else part'
ensure
  puts 'ensure part is called'
end
