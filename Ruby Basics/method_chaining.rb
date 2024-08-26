class MethodChaining1
  def hi
    p 'hi'
  end

  def hi
    p 'below hi'
  end
end
MethodChaining1.new.hi
