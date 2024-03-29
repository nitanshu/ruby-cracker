class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def method_missing(name)
    super if !@data_source.respond_to?("get_#{name}_info")
    info = @data_source.send("get_#{name}_info", @id)
    price = @data_source.send("get_#{name}_price", @id)
    result = "#{name.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price >= 100
    result
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
