class Lawyer; end
nick = Lawyer.new
nick.talk_simple

# NoMethodError: undefined method `talk_simple' for #<Lawyer:0x007f801aa81938> it calls to method_missing of BasicObject