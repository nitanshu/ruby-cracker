class SingletonClassMethod
  class << self
    instance_eval do 
      def test_1
        puts 'test 1'
      end  
    end

    def test_2
      puts 'test 2'
    end
  end
end
