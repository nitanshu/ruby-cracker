require 'ostruct'

class Order
  def user
    @_user ||= OpenStruct.new(name: 'Mike', age: 28, occupation: 'slacker')
  end

  def method_missing(method_name, *arguments, &block)
    if method_name.to_s =~ /user_(.*)/
      p "calling method #{$1} #{arguments}"
      user.send($1, *arguments, &block)
    end
  end

  def respond_to_missing?(method_name, include_private = false)
    p "respond to missing"
   method_name.to_s.start_with?('user_') || super
  end
end

order = Order.new
order.user_name

# 'https://thoughtbot.com/blog/always-define-respond-to-missing-when-overriding'
