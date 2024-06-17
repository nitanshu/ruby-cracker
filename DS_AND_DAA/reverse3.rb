def findMaximumPositiveIndex(arr)
  min = arr[0], max = arr[0], minIndex = 0, maxIndex = 0
  maximumIndex = 0
  i = 0
  while i < arr.length
    min = arr[i]
    minIndex = i
    isMaxPresent = false
    j = i
    while j < arr.length
      if arr[j] > min
        max = arr[j]
        maxIndex = j
        isMaxPresent = true
      end
      j += 1
    end
    maximumIndex = (maxIndex - minIndex) + 1 if maximumIndex < ((maxIndex - minIndex) + 1)
    i += 1
    return maximumIndex
  end
end

n = gets.to_i
a = []
c = []
n.times do
  size_of_arr = gets.to_i
  a << gets
  a.each do |d|
    c << d.chomp.split(' ').map(&:to_i)
  end
end
def find_difference_index(arr)
  left = 0
  right  = arr.length - 1
  while left < right
    break if arr[left] < arr[right]

    if arr[left] > arr[left + 1]
      left += 1
    elsif arr[right] < arr[right - 1]
      right -= 1
    end
  end
  right - left + 1
end

a = 'lunda'.chars
i = 0
j = a.length - 1
while i < a.length / 2
  tmp = a[i]
  a[i] = a[j]
  a[j] = tmp
  i += 1
  j -= 1
end
