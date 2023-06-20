module AAA
  def hi; 'AAA#hi'; end
end

class Money
  class << self
    include AAA
  end
end

Money.hi
