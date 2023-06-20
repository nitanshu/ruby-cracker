class Nit
  def met
    puts 'met from nit'
  end
end
n = Nit.new

def n.what_method
  puts 'what method this is sinleton'
end
