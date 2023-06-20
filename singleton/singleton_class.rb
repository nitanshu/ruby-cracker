class SingletonTest
  class << self
    p self
    p self == SingletonTest.singleton_class
    def test1
      p self
    end
  end
end
