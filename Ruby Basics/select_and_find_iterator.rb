#Create a new array from the captain_planet array with all the elements that contain the letter "a".
captain_planet = ["earth", "fire", "wind", "water", "heart"]
captain_planet.select do |word|
  word.include?("a")
end

#Identify the first element in the stuff array that begins with the letters "wa".

stuff = ['candy', :pepper, 'wall', :ball, 'wacky']
stuff.find do |word|
  word[0..1] == "wa"
end

#Identify all the elements in the stuff array that begins with the letters "wa".

stuff.find_all do |word|
  word[0..1] == "wa"
end