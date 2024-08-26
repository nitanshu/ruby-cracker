a = File.open("somefile").readlines.first
puts a.tainted?
