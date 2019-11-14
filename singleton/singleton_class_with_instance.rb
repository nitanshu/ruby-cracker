cad = 'stuff'
class << cad
  def uno() 'uno' end
  def self.dos() 'dos' end
end
cad.uno
cad.singleton_class.dos