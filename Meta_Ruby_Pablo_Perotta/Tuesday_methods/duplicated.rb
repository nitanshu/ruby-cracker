class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  %w[mouse cpu keyboard].each do |attr|
    define_method :"#{attr}" do
      info = @data_source.send("get_#{attr}_info", @id)
      price = @data_source.send("get_#{attr}_price", @id)
      result = "#{attr.capitalize}: #{info} ($#{price})"
      return "* #{result}" if price >= 100

      result
    end
  end

  def method_missing(name, *arg, &block)
    super unless @data_source.respond_to?("get_#{name}_info")

    info = @data_source.send("get_#{name}_info", @id)
    price = @data_source.send("get_#{name}_price", @id)
    result = "#{name.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price >= 100

    result
  end

  def mouse
    info = @data_source.get_mouse_info(@id)
    price = @data_source.get_mouse_price(@id)
    result = "Mouse: #{info} ($#{price})"
    return "* #{result}" if price >= 100

    result
  end

  def cpu
    info = @data_source.get_cpu_info(@id)
    price = @data_source.get_cpu_price(@id)
    result = "Cpu: #{info} ($#{price})"
    return "* #{result}" if price >= 100

    result
  end

  def keyboard
    info = @data_source.get_keyboard_info(@id)
    price = @data_source.get_keyboard_price(@id)
    result = "Keyboard: #{info} ($#{price})"
    return "* #{result}" if price >= 100

    result
  end
end
