Dir.mkdir("/mynewdir")
Dir.delete("testdir")


#To change directory within a Ruby program, use Dir.chdir:
Dir.chdir("/usr/bin")
Dir.pwd

#You can get a list of the files and directories within a specific directory using Dir.entries:
puts Dir.entries("/usr/bin").join(' ')


Dir.foreach("/usr/bin") do |entry|
  puts entry
end
  