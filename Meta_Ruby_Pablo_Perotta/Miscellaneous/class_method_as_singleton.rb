class A
  class << self
    def test
      'test'
    end
  end
end

A.singleton_methods
