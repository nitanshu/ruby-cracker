module M2

end

class C2
  prepend M2
end
class D2 < C2; end
D2.ancestors # => [D2, M2, C2, Object, Kernel, BasicObject]