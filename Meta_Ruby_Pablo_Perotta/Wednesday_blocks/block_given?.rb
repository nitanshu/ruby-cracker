def a_method
  return yield if block_given?
  'no block'
end
a_method
a_method { "here's a block!" }
# => "no block"
# => "here's a block!"