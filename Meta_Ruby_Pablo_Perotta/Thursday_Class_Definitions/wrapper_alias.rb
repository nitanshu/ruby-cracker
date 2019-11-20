class String
  alias_method :real_length, :length
  def length
    real_length > 5 ? 'long' : 'short'
  end
end
"War and Peace".length
# => "long"
"War and Peace".real_length # => 13