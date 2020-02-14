# Ruby 2.1

before = Symbol.all_symbols.size
100_000.times do |i|
  "sym#{i}".to_sym
end
GC.start
after = Symbol.all_symbols.size
puts after - before
# => 100001

# Ruby 2.2
before = Symbol.all_symbols.size
100_000.times do |i|
  "sym#{i}".to_sym
end
GC.start
after = Symbol.all_symbols.size
puts after - before
# => 1