class BinarySearch
  def initialize(*args)
    @sorted_array= args
  end

  def search(item)
    front=0
    rear = @sorted_array.length-1
    mid_index = (front + rear)/2
    if @sorted_array[mid_index] == item
      p "#{item} is found at #{@sorted_array.index(item)}"
    else
      if item > @sorted_array[mid_index]
        linear_search_right(mid_index, item, rear)
      else
        linear_search_left(mid_index, item, front)
      end
    end

  end
  
  def linear_search_right(mid_index, item, rear)
    p 'searching in right...'
    while mid_index < rear
      if @sorted_array[mid_index] == item
        puts "found #{item} from right search at #{@sorted_array.index(item)}"
      end
      mid_index+=1
    end

  end
  
  def linear_search_left(mid_index, item, front)
    p 'searching in left...'
    while mid_index > front
      if @sorted_array[mid_index] == item
        puts "found #{item} from left search at #{@sorted_array.index(item)}"
      end
      mid_index-=1
    end
  end
end