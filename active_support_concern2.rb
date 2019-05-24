
require 'active_support/concern'
module Mode
  module Base
    extend ActiveSupport::Concern
    included do
      def test
        puts "=======this is a test="
      end
    end
  end
end

module Mode
  module Speed
    extend ActiveSupport::Concern
    include Mode::Base

    included do
      def speed_test
        puts "=---------------------speed is test"
      end
    end
  end
end

class Vechile
  include Mode::Speed
end

Vechile.new.speed_test
Vechile.new.test

