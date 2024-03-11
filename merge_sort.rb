# 10/03/24
# Project: Recursive.
# Assignment2: Merge sort.

a = [3, 2, 1, 13, 8, 5, 0, 1]
b = [105, 79, 100, 110]

# Breaks down array to single digit by using recursive method and pass in the values to swap.
def merge_sort(array)
  return array if array.length <= 1

  middle = array.length / 2
  left = array[0...middle]
  right = array[middle..-1]

  swap_and_merge(merge_sort(left), merge_sort(right))
end

# Swaps value comparing left and right until either left or right is empty and returns sorted element
def swap_and_merge(left, right)
  sorted = []
  until left.empty? || right.empty? # Do until either right or left is empty
    if left.first <= right.first # Compares first element of left and right
      sorted << left.shift  # If left is less append to sorted
    else
      sorted << right.shift # If right is less append to sorted
    end
  end
  sorted.concat(left).concat(right) # Add both left and right to sorted. One is always empty.
end


# Test
p merge_sort(a)
# p merge_sort(b)
