class Computer
  def respond_to_missing?(method, include_private = false)
    @data_source.respond_to?("get_#{method}_info") || super
  end
end

class Treasure
  def method_missing(name, *arg, &blk)
    super unless name == :hunt
    "You called this method #{name}"
  end

  def respond_to_missing?(method, *args, &block)
    method == :hunt || super
  end
end
