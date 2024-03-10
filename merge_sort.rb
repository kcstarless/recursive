### Merge sort

a = [3, 2, 1, 13, 8, 5, 0, 1]
# b = [105, 79, 100, 110]

def merge_sort(array)
  size = array.size
  if size <= 1
    array
  else
    left, right = array.each_slice((size / 2.0).round).to_a
    puts sorted_left = merge_sort(left)
    puts sorted_right = merge_sort(right)
    # swap(merge_sort(right)
    merge (sorted_left, sorted_right)
  end
end

def merge(array_left, array_right)
  if array_left.empty?
    return array_right
  end
  if array_right.empty?
    return array_left
  end
end

# def swap(array, sorted_array=[])
#   if array.size == 1
#     array
#   else
#     if array[0] > array[1]
#       array[0], array[1] = array[1], array[0]
#       # sorted_array << array[0]
#       # sorted_array << array[1]
#       # p sorted_array
#       swap(array)
#     end
#   end
# end


### Test
merge_sort(a)

# if array[0] > array[1]
#   left = array[0]
#   right = array[1]
#   array[0] = right
#   array[1] = left
# end
