x ='sd'
Nike = Class.new do
  p x
  x = 77
  binding
end
eval('x')