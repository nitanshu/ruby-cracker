require 'ostruct'
class Order 
  where 
  def initialize(total)
    @total = total
  end  
end

module M
def hello 
  'hello'
end
end

class A
  extend M

  def hid
    'hi'
  end
end

arr = [1,[2,3],[4],[5,[6,7]]]

def flat_array(arr)
  flatten_a =[]
  arr.each do |d|
    if d.is_a?(Array)
      flat_array(d)
    else
      flatten_a << d
    end
  end
end
arr.each do |d|
  if d.class == Integer
    flatten_a << d 
  else
    d.each do |e|
      flatten_a << e
    end
  end
  flatten_a
end