class String
def titleize
self.gsub(/(\A|\s)\w/){ |letter| letter.upcase }
end
end

require 'test/unit'
class TestTitleize < Test::Unit::TestCase
def test_basic
assert_equal("This Is A Test", "this is a test".titleize)
assert_equal("Another Test 1234", "another test 1234".titleize)
assert_not_equal("We're Testing", "foo".titleize)
assert_raise (ZeroDivisionError) { 2 / 0 }
assert_instance_of(Fixnum,0)
end
end
