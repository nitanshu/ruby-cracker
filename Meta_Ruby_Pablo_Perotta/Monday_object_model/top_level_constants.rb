module M
  class C
    X = 'a constant'
  end
  C::X # => "a constant"
end
M::C::X # => "a constant"

M.constants # => [:C]
Module.constants.include? :Object # => true
Module.constants.include? :Module # => true
Module.constants.include? :Class  # => true
# Any word that starts with capital letter is also a constant with its own functionality