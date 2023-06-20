[3, 6, 10, 13].inject(:+) #=> (((3 + 6) + 10) + 13) => 32

[3, 6, 10].inject { |sum, number| sum + number }
# =>|3, 6| 3 + 6 => 9
# =>|9, 10| 9 + 10 =>19

[3, 6, 10].inject(0) { |sum, number| sum + number }
# =>|0,3| 0 + 3 => 3
#=>|3, 6| 3 + 6 => 9
#=>|9, 10| 9 + 10 =>19
#=> 19

[10, 20, 30, 5, 7, 9, 3].each_with_object([]) do |element, result|
  result << element.to_s if element > 9
end
# => ["10", "20", "30"]
