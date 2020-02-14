[[:student, "Terrance Koar"], [:course, "Web Dev"]].inject({}) do |result, element|
  result[element.first] = element.last
  result
end
#=> {:student=>"Terrance Koar", :course=>"Web Dev"}

[[:student, "Terrance Koar"], [:course, "Web Dev"], [:course1, "Web Dev1"]].inject({}) do |result, element|
  result[element.first] = element.last
  result
end

#=> {:student=>"Terrance Koar", :course=>"Web Dev", :course1=>"Web Dev1"}


