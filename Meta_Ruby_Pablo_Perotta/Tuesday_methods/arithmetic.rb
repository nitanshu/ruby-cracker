# frozen_string_literal: true

class Arithmetic < BasicObject
  DEFINED_OPERATIONS = %w[+ - * /].freeze
  def method_missing(name, *args, &block)
    p "method_name #{name}, arg are #{args}"
    return block if block_given?

    args.first.send(:"#{name}", args.last)
  end

  def respond_to_missing?(method, include_private = false)
    DEFINED_OPERATIONS.include?(method) || super
  end
end
a = Arithmetic.new
a.+(1, 2)
a.-(10, 5)
a.*(10, 10)
a./(10, 3)
