n= gets
n=n.to_i
a = (2..n).to_a
i=2
np=[]
while i<= n do
  j=2
  while j <= n do
    if i != j
      if i%j ==0
        np << i
        break
      end
    end
    j+=1
  end
  i+=1
end
prime =  a- np
puts prime.join(' ')

