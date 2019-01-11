class Nit
def met
puts "met from nit"
end
end
n=Nit.new
 class << n
   def n.test_n
     puts "test n"
   end
   def test_a
    puts "test 1"
    end
  def test_b
     puts "test b"
    end
  end
