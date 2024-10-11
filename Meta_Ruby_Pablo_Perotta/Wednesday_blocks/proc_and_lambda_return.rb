# Should work
my_lambda = -> {
  return 1
"another line"}
puts "Lambda result: #{my_lambda.call}" # 1

# Should raise exception
my_proc = Proc.new {
  return 1
  "proc line"
}
puts "Proc result: #{my_proc.call}" #LocalJumpError

def call_proc
  puts "Before proc"
  my_proc = Proc.new { return 2 }
  puts "after block creation proc"
  my_proc.call
  puts "After proc"
end
p call_proc
# Prints "Before proc" but not "After proc"