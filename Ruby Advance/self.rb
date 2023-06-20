class A
  puts "this is main self===#{self}"
  def meth
    puts "this is method self ====#{self}"
  end

  def self.me
    puts "this is class method====#{self}"
  end
end
