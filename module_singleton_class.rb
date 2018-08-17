module Ghost
  def self.boo; end
  class << self
    def hi; end
  end
  def bye; end
end

class Town
  extend Ghost
end