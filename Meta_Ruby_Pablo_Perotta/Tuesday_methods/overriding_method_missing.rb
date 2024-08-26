class Lawyer
  def method_missing(method, *args, &blk)
    puts "You called: #{method}(#{args.join(', ')})"
    puts "________________#{blk.call('nitanshu')}_________________--"
    puts 'You also passed it a block' if block_given?
  end
end
bob = Lawyer.new
bob.talk_simple('a', 'b') do |d|
  "Hey how are you? #{d}"
end

# You called: talk_simple(a, b)
# (You also passed it a block)
