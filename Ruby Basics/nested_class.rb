class Drawing
  def self.give_me_a_circle
    Circle.new
  end

  class Line
  end

  class Circle
    def what_am_i
      'This is a circle'
    end
  end
end

a = Drawing.give_me_a_circle
puts a.what_am_i
b = Drawing::Circle.new
puts b.what_am_i
c = Circle.new
puts c.what_am_i
