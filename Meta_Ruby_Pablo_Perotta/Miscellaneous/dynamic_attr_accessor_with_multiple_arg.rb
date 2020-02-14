class Car
  def self.features(*args)
    args.each do |arg|
      define_method("#{arg}_info=") do |info|
        instance_variable_set("@#{arg}_info", info)
      end

      define_method("#{arg}_info") do
        instance_variable_get("@#{arg}_info")
      end
    end
  end
end
