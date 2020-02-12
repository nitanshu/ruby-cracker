class String
  def reverse
    'I am only removed from this class'
  end

  remove_method :reverse
end

"nitanshu".reverse

class String
  def reverse
    'I am prevented to look up in the ancestor chain'
  end

  undef_method :reverse
end

#TODO:  BLOG NEEDS TO WRITE ON THIS 