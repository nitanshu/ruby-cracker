module MordenWarFare
  class << self
    def captain_america
      'has his shield'
    end
    instance_eval do 
      def s_u
        'su'
      end
    end
    def iron_man
      'has his suit'
    end
  end
  def self.natasha
    'she has the talent to attract any avenger'
  end

  def battle
    'every one is involved'
  end
end

class Battle
  class << self
    include MordenWarFare
  end
end
Battle.battle
Battle.natasha
