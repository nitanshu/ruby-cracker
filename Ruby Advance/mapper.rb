module Enumerable
  def mapper(&block)
    a = []
    each do |d|
      a << block.call(d)
    end
    a
  end
end

[3, 5, 19].mapper { |n| n * 2 }
