module M
  class C
    X = 'a constant'
  end
  C::X # => "a constant"
end
M::C::X # => "a constant"

M.constants # => [:C, :Y]
Module.constants.include? :Object # => true
Module.constants.include? :Module # => true