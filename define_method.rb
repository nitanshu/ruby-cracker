require 'ruby'

class Car
    FEATURES = %w(engine wheel airbag alarm stereo)
    FEATURES.each do |feature|
        define_method("#{feature}_info=") do |info|
            instance_variable_set("@#{feature}_info", info)
        end
    end
end


class DefineMethod
    define_method("perform_chunk") do |argument|
        "performing chunk on #{argument}"
    end
    define_method("perform_chomp") do |argument|
        "performing chomp on #{argument}"
    end
end

d= DefineMethod.new
puts d.perform_chunk("nose")
puts d.perform_chomp("string")

