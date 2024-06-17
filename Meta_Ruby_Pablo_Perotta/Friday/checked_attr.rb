module CheckedAttribute
  def attr_checked(name, &blk)
    blk.call()
  end
end