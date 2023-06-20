class A
  class << self
    def test
      'test'
    end
  end
end

A.singleton_methods
# Class methods are always singleton methods
