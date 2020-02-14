class Object
  def puts(o)
    if o.is_a? Array
      super(o.to_s)
    elsif o.is_a? String
      super()
       super
       super(o + 'super method class')
    else
     super(o+1)
   end
  end
end
