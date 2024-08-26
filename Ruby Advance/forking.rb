
if fork.nil?
exec "ruby some_other_file.rb"
end
puts "This Ruby script now runs alongside some_other_file.rb"


child = fork do
sleep 3
puts "Child says 'hi'!"
end
puts "Waiting for the child process..."
Process.wait child
puts "All done!"
