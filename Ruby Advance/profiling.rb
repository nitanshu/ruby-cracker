require 'profile'
class Calculator
def self.count_to_large_number
x = 0
100000.times { x += 1 }
end

def self.count_to_small_number
x = 0
1000.times { x += 1 }
end

end

Calculator.count_to_large_number
Profiler_::start_profile
Calculator.count_to_small_number
Profiler_::stop_profile


# run this program as `ruby -rprofile profiling.rb`
