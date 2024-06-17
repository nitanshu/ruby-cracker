threads = []
10.times do  
 thread = Thread.new do
   puts "Thread is running "
 end
 threads<< thread
end
Thread.list.each {|thread| thread.join unless thread == Thread.main}
