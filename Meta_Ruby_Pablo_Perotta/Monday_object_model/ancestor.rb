module M
  def method_2
    'method 2'
  end

  def method_1
    'moudle method 1'
  end
end

class Ancestors
  include M
  def method_1
    'hila ke rakh do'
  end
end
