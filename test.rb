def test(col)
col.collect do|a|
a*2
end
end

puts test(['sachin','nitanshu'])
