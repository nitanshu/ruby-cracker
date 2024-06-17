a = 'hello world!!'.scan(/./)
b = []
a.length.times do
  b.push(a.last)
  a.pop
end
b.join('')

def prime(n)
  n.times do |t|
    (1..n).each do |d|
      t/d
    end
  end
end
