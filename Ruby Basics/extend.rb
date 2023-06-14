module Test
  def libra
    p 'libra'
  end

  def self.des
    p self
  end
end

class ExtendExample
  extend Test
  def test
    p 'test'
  end
end

ExtendExample.libra

ExtendExample.des

e = ExtendExample.new
e.test
e.extend(Test)
e.libra
Test.des
