# 1
# Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string).

def solution(str, ending)
  str.end_with?(ending)
end


# 2
# Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

def descending_order(n)
  n.to_s.split('').sort.reverse.join.to_i
end


# 3
# You will be given an array and a limit value. You must check that all values in the array are below or equal to the limit value. If they are, return true. Else, return false.

# def small_enough(a, limit)
#   a.max <= limit
# end

# def small_enough(a, limit)
#   a.all? { |item| item <= limit }
# end

def small_enough(a, limit)
  a.each do |i|
    return false if i > limit
  end
  true
end


# 4
# ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything but exactly 4 digits or exactly 6 digits.
# If the function is passed a valid PIN string, return true, else return false.

def validate_pin(pin)
  pin.length == 6 && pin.match?(/^\d{6}$/) || pin.length == 4 && pin.match?(/^\d{4}$/)
end


# 5
# Given a two-dimensional array of integers, return the flattened version of the array with all the integers in the sorted (ascending) order. Example:
# Given [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]], your function should return [1, 2, 3, 4, 5, 6, 7, 8, 9].

def flatten_and_sort(array)
  array.flatten.sort
end

# 6
# Complete the method which accepts an array of integers, and returns one of the following:
# "yes, ascending" - if the numbers in the array are sorted in an ascending order
# "yes, descending" - if the numbers in the array are sorted in a descending order
# "no" - otherwise
# You can assume the array will always be valid, and there will always be one correct answer.

def is_sorted_and_how(arr)
  if arr.sort == arr
    'yes, ascending'
  elsif arr.sort.reverse == arr
    'yes, descending'
  else
    'no'
  end
end
