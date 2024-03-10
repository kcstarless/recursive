# 09/03/24
# Project: Recursive.
# Assignment1: Fibonacci.

# Iterative version.
def fibs(number, array = [])
  n = 0
  while (n < number)
    array << n if n == 0 || n == 1
    array << array[n - 1] + array[n - 2] if n > 1
    n += 1
  end
  array
end

# Recursive version.
def fibs_rec(num)
  if num == 1
    [0]
  elsif num == 2
    [0, 1]
  else
    array = fibs_rec(num - 1)
    array << array[-1] + array[-2]
  end
end

# Test.
# p fibs(8)
p fibs_rec(3)
