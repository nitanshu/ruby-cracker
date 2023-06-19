def block_evaluation(a, *args, &block)
  p "-----#{args} --------#{block.inspect}-----#{a}"
  block.call(args.first, args.last)
end
block_evaluation('hitesh', 2,4) {|x,y| x * y }