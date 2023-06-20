class Doctor
  %w[assoc rassoc reduce].each do |action|
    define_method("perform_#{action}") do |argument|
      "performing #{action.gsub('_', ' ')} on #{argument}"
    end
  end
end

doctor = Doctor.new
puts doctor.perform_assoc('nose')
puts doctor.perform_rassoc('throat')
puts doctor.perform_reduce('in da club')
