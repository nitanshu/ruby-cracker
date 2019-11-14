module Kernel
  def nitanshu_pp
    self
  end
end
# run it in irb will return main

Kernel.private_instance_methods.grep(/^pr/) # => [:printf, :print, :proc]