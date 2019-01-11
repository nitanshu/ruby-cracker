module Mode
  included do
    class_attribute :setting
  end
end

class A
  include Mode
end