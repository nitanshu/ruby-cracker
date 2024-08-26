a=[1,2,4,5,6,8]

def binary_search(a,key)
low = 0
high = a.length - 1
  while low <= high
    mid = low + ((high-low)/2)
    if key == a[mid]
      puts "element #{a[mid]} found at index #{mid} "
      break
    elsif key > a[mid]
      high = mid - 1
    else
      low = mid + 1
    end
  end
  return 'Not found'
end