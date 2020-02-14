sg = Fiber.new do
  a=0
  10.times {
a += 1
Fiber.yield a
  }
end
10.times {puts sg.resume
}

