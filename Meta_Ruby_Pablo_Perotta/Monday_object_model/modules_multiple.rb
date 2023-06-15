# frozen_string_literal: true
module M1; end
module M2
  include M1
end
module M3
  prepend M1
  include M2
end
M3.ancestors # => [M1, M3, M2]

class Testify
  prepend M3
  def test_m
    puts "test_m"
  end
end

class TestifyTest < Testify
  def test_test
    p 'tst'
  end
end

tt = TestifyTest.new
tt.test_test

TestifyTest.ancestors