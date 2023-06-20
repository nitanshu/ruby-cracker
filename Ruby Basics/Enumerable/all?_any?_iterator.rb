# all? and any? are boolean enumerable
# Return true if any of the elements in the soap_opera array start with the letter "a" and false otherwise.
soap_opera = %w[all my children]
soap_opera.any? do |word|
  word[0] == 'a'
end

# Return true if every element of the tools array starts with an "r" and false otherwise.
tools = %w[ruby rspec rails]
tools.all? do |word|
  word[0] == 'r'
end
