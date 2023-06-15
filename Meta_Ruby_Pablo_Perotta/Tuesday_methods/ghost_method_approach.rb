class Computer < BasicObject
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end
  def method_missing(name, *args)
    super unless @data_source.respond_to?("get_#{name}_info")
    info = @data_source.send("get_#{name}_info", @id)
    price = @data_source.send("get_#{name}_price", @id)
    result = "#{name.capitalize}: #{info} ($#{price})"
    return "* #{result}" if price >= 100

    result
  end
end

class Avengers
  def initialize(name, intentions)
    @name = name
    @intentions = intentions
  end

  def method_missing(name, *args)
    super if @intentions  == 'cruel'
    @avenger = name
  end
end