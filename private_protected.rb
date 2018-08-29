class AccessorExample
  def its_public
    puts 'its public'
  end

  def calling_protected
    self.its_protected
  end

  def calling_private
    self.its_private
  end

  private
  def its_private
    puts 'its private'
  end

  protected
  def its_protected
    puts 'its protected'
  end
end
class ChildAccessorExample < AccessorExample
  def calling_parent_private_method
    its_private
  end
end

a = AccessorExample.new
a.its_public
a.send(:its_private)
a.send(:its_protected)
a.method(:its_private).call
a.method(:its_protected).call
a.calling_protected
a.calling_private
a.send(:calling_protected)
a.send(:calling_private)
ChildAccessorExample.new.calling_parent_private_method
