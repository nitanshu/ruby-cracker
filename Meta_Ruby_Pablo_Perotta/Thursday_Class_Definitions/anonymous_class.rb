class AnonymousClass < Array 
  def my_method
    'Hello!'
  end 
end

AnonymousClass = Class.new(Array) do 
  def hello
    'Hello!'
  end
end