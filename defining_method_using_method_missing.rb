class CarModel
  def method_missing(name, *args)
    name = name.to_s
    super unless name =~ /(_info|_price)=?$/
    if name =~ (/=$/)
      instance_variable_set("@#{name.chop}", args.first)
    else
      instance_variable_get("@#{name}")
    end
  end
end