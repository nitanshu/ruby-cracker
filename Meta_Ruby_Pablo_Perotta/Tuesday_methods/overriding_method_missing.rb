class Lawyer
  def method_missing(method, *args, &blk)
    puts "You called: #{method}(#{args.join(', ')})"
    puts "________________#{blk}_________________--"
    puts 'You also passed it a block' if block_given?
  end
end
bob = Lawyer.new
bob.talk_simple('a', 'b') do
  'Hey how are you?'
end

# You called: talk_simple(a, b)
# (You also passed it a block)
