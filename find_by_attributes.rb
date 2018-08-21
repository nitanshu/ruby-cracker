class LogicalSnake
  ATTR= [:length, :iq, :speed]
  attr_accessor *ATTR
  ATTR.each do |attr|
  define_method("find_by_#{attr}") do ||
  self.where
  end
  end
end