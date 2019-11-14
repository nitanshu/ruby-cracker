# *
# **
# ***
# ****
# *****
# ****
# ***
# **
# *

1.upto(9) do |d|
  if d < 6
  puts "*"*d
  else
    puts "*"*(10-d)
  end
end
# O(n)
