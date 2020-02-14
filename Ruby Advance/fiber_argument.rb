sg = Fiber.new do
  s = 0
  loop do
    square = s * s
    s += 1
    s = Fiber.yield(square) || s
  end
end
puts sg.resume
puts sg.resume 50
puts
puts
puts
puts
puts
puts
puts
puts sg.resume 40
sg.resume
sg.resume
sg.resume 40
sg.resume
sg.resume
sg.resume 0
sg.resume
sg.resume
