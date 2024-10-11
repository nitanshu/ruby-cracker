nums = [2,11,7,15]
target = 9
i = 0
j = 1
while i < nums.length - 1 do 
  while  j < nums.length - 1 do
    if nums[i] + nums[j] == target
      puts "the nos are #{nums[i]} and #{nums[j]}"
      break
    end
    j+=1
  end
  i+=1
end

h={"0": 2, '1': 11, '2': 7}