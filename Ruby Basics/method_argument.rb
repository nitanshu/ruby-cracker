class MethodArgument
  def test(*array, b, c)
    puts "array is #{array}"
    puts "b is #{b}"
    puts "c is #{c}"
  end

  def test_2(b, *array, c)
    puts "array is #{array}"
    puts "b is #{b}"
    puts "c is #{c}"
  end

  def test_3(b, **hash)
    puts "b is #{b}"
    puts "hash is #{hash}"
  end
end

test_1(2, 3)

test_2(1, 3)
a is []
b is 1
c is
# https://blog.saeloun.com/2020/01/27/how-to-pass-arguments-to-methods-in-ruby-and-how-it-affects-the-arity/
