def find_all_hobbyists(hobby, hobbies)
  a= []
  hobbies.each do |k,v|
    a << k if v.any?(hobby) 
  end
  a.size > 1 ? a.join(' ') : a.first.to_s
end
    
hobbies = {
    "Steve" => ['Fashion', 'Piano', 'Reading'],
    "Patty" => ['Drama', 'Magic', 'Pets'],
    "Chad" => ['Puzzles', 'Pets', 'Yoga']
}
  
find_all_hobbyists('Yoga', hobbies)
