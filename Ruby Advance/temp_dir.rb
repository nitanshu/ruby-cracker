require 'tmpdir'
puts Dir.tmpdir
tempfilename = File.join(Dir.tmpdir, "myapp.dat")
tempfile = File.new(tempfilename, "w")
tempfile.puts "This is only temporary"
tempfile.close
File.delete(tempfilename)


require 'tempfile'
f = Tempfile.new('myapp')
f.puts "Hello"
puts f.path
F.close
