puts File.mtime("text.txt")
#=> Wed Jun 18 18:25:42 2009
File.exist?(“text.txt”)
File.size("text.txt")

File.delete("file1.txt")
File.delete("file2.txt", "file3.txt", "file4.txt")
File.unlink("file1")
File.rename("file1.txt", "file2.txt")

File.open("text.txt", "w") do |f|
  f.puts "This is a test"
end
File.open("text.txt").each(',') { |line| puts line }

  
f = File.open("text.txt")
puts f.pos
puts f.gets
puts f.pos

0
Fred Bloggs,Manager,Male,45
28
