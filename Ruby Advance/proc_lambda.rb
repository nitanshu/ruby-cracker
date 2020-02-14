lam = lambda { |x| puts x }    # creates a lambda that takes 1 argument
lam.call(2)                    # prints out 2
lam.call                       # ArgumentError: wrong number of arguments (0 for 1)
lam.call(1,2,3)                # ArgumentError: wrong number of arguments (3 for 1)


proc = Proc.new { |x| puts x } # creates a proc that takes 1 argument
proc.call(2)                   # prints out 2
proc.call                      # returns nil
proc.call(1,2,3)               # prints out 1 and forgets about the extra arguments


def lambda_test
  lam = lambda { return }
  lam.call
  puts "Hello world"
end

lambda_test                 # calling lambda_test prints 'Hello World'
# ‘return’ inside of a lambda triggers the code right outside of the lambda code


def proc_test
  proc = Proc.new { return }
  proc.call
  puts "Hello world"
end

proc_test                 # calling proc_test prints nothing

#‘return’ inside of a proc triggers the code outside of the method where the proc is being executed

# Summary Differences
#
# Procs are objects, blocks are not
# At most one block can appear in an argument list
# Lambdas check the number of arguments, while procs do not
# Lambdas and procs treat the ‘return’ keyword differently
