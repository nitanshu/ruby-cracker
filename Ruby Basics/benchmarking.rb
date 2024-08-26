require 'benchmark'
Benchmark.bmbm do |bm|
  bm.report('for:') do
    for i in 1..100 do
      x = i
    end
  end
  bm.report('times:') do
    100.times do |i|
      x = i
    end
  end
end
