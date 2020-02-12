class MyClass
  def my_method
    "original my_method()"
  end
  def another_method
    my_method
  end
end
module MyClassRefinement
  refine MyClass do
    def my_method
      "refined my_method()"
    end
  end
end
using MyClassRefinement
p MyClass.new.my_method # => "refined my_method()"

p MyClass.new.another_method # => "original my_method()"

# this code will not work in irb as using is only allowed at top