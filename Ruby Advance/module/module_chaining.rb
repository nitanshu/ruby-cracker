module Window
  def hi
    'Window#hi'
  end
end

module Shade
  def hi
    'Shade#hi'
  end
end

class BBB
  include Window
  include Shade
end

p BBB.new.hi
