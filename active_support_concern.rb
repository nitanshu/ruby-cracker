#1 ================ With AS::Concern you can write your module the better way ===================
module M
  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      scope :disabled, -> {where(disabled: true)}
    end
  end

  module ClassMethods
    puts 'class method'
  end
end


require 'active_support/concern'

module M
  extend ActiveSupport::Concern

  included do
    scope :disabled, -> {where(disabled: true)}
  end

  class_methods do
    puts 'class method'
  end
end
#2================ With AS::Concern helps manage the module dependencies ===================
module Foo
  def self.included(base)
    base.class_eval do
      def self.method_injected_by_foo
        puts "=======test test="
      end
    end
  end
end

module Bar
  def self.included(base)
    base.method_injected_by_foo
  end
end

class Host
  include Foo # We need to include this dependency for Bar
  include Bar # Bar is the module that Host really needs
end

#---- This won't work----------------------
# module Bar
#   include Foo
#   def self.included(base)
#     base.method_injected_by_foo
#   end
# end
#
# class Host
#   include Bar
# end


#============= This will work =====================
require 'active_support/concern'

module Foo
  extend ActiveSupport::Concern
  included do
    def self.method_injected_by_foo
      puts "=======test test="
    end
  end
end

module Bar
  extend ActiveSupport::Concern
  include Foo

  included do
    self.method_injected_by_foo
  end
end

class Host
  include Bar # It works, now Bar takes care of its dependencies
end
