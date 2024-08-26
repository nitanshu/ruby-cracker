MeganFox = Module.new do
  def figure
    p 'too hot too handle !!!'
  end
end

class D
  extend MeganFox
end

D.figure