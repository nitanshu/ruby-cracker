class Test

private
def test_priavte
puts "privaet"
end

protected
def test_protected 
puts "protected"
end

public 
def calling_you(x)
x.test_protected
end
end

