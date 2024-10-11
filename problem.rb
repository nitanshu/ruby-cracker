# 2 Groups of Army - Battalion-1 and Battalion-2

# - Members of Battalion-1 have an even number of years of experience.
# - Members of Battalion-2 have an odd number of years of experience.

# Input:
# Take input or initialize as String for the number of army men and their experiences.

# Sample Input:
# 8
# 3 1 14 9 6 19 6 2

# Output:
# Battalion-1 experiences are sorted ascending order.
# Battalion-2 experiences are sorted in descending order.

# Sample Output:
# 2 6 6 14
# 19 9 3 1


n= gets.to_i

a=gets.chomp.split(' ').map(&:to_i)

even_nos=[]
odd_nos=[]
a.each do |d|
  even_nos << d if d.even?
  odd_nos << d if d.odd?
end
even_nos.sort!.join(' ')
odd_nos.sort!.reverse.join(' ')
