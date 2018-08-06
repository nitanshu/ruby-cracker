require 'ruby'

class Car
  FEATURES = %w(engine wheel airbag alarm stereo)
  FEATURES.each do |feature|
    define_method("#{feature}_info=") do |info|
      instance_variable_set("@#{feature}_info", info)
    end
  end
end

