module D
  module E
    class C
      include A::B
      def aloha
        'aloha'
      end
    end
  end
end

module A
  module B
    def nora
      'nora'
    end
  end
end