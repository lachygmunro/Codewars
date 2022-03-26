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
    if i > limit
      return false
    end
  end
  return true
end
