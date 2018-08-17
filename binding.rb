class A
def method
@x=5
x=4
binding 
end
end
abc = A.new.method
p eval("x", abc)

