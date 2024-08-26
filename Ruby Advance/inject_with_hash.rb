[[:student, 'Terrance Koar'], [:course, 'Web Dev']].each_with_object({}) do |element, result|
  result[element.first] = element.last
end
#=> {:student=>"Terrance Koar", :course=>"Web Dev"}

[[:student, 'Terrance Koar'], [:course, 'Web Dev'], [:course1, 'Web Dev1']].each_with_object({}) do |element, result|
  result[element.first] = element.last
end

#=> {:student=>"Terrance Koar", :course=>"Web Dev", :course1=>"Web Dev1"}

[[:student, 'Terrance Koar'], [:course, 'Web Dev']].inject({}) do |result, element| 
  p "result   #{result}" 
  p "element  #{element}"
  result[element.first.to_s] = element.last.upcase
  result
end
