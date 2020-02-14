class RangeGame

  attr_accessor :range_value, :range_sum

   def initialize(instance_variable_name)
     self.send("range_value=", instance_variable_name.bytes)
     self.send("range_sum=", instance_variable_name.bytes.inject(:+))
   end

#  def initialize(p1, p2)
 #   puts "p1 is #{p1}"
  #  puts "p2 is #{p2}"
   # Range.new(p1,p2, nil).each do |d|
    #  puts d
    #end
 #end

end
