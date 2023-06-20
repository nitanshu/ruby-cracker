class Car
  FEATURES = %w[engine wheel airbag alarm stereo].freeze
  FEATURES.each do |feature|
    define_method("#{feature}_info=") do |info|
      instance_variable_set("@#{feature}_info", info)
    end

    define_method feature do
      instance_variable_get("@#{feature}")
    end
  end
end
c = Car.new
c.engine = 'V12'
c.engine

class DefineMethod
  define_method('perform_chunk') do |argument|
    "performing chunk on #{argument}"
  end
  define_method('perform_chomp') do |argument|
    "performing chomp on #{argument}"
  end
end

d = DefineMethod.new
puts d.perform_chunk('nose')
puts d.perform_chomp('string')
