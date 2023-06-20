class Fido
  def angry
    sound * 3
  end

  protected

  def sound
    'woof'
  end
end

p Fido.new.angry
