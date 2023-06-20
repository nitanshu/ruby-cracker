module Bob
  def job
    "gettin' loaded"
  end
  def self.done
    'job done'
  end
  module_function :job
end

class A
  include Bob
end

p Bob.job
p A.new.job
