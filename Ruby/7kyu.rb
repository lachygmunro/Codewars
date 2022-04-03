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

# 7
# Make a program that filters a list of strings and returns a list with only your friends name in it.
# If a name has exactly 4 letters in it, you can be sure that it has to be a friend of yours! Otherwise, you can be sure he's not your friend.

# def friend(friends)
#   friends.select { |name| name.length == 4 }
# end

def friend(friends)
  friends.select do |friend|
    friend.match(/^\w{4}$/)
    end
end

# 8
# There is a war and nobody knows - the alphabet war!
# There are two groups of hostile letters. The tension between left side letters and right side letters was too high and the war began.
# Task
# Write a function that accepts fight string consists of only small letters and return who wins the fight. When the left side wins return Left side wins!, when the right side wins return Right side wins!, in other case return Let's fight again!.

# The left side letters and their power:
#  w - 4
#  p - 3
#  b - 2
#  s - 1
# The right side letters and their power:
#  m - 4
#  q - 3
#  d - 2
#  z - 1
# The other letters don't have power and are only victims.

def alphabet_war(fight)
  left = fight.scan(/[wpbs]/)
  right = fight.scan(/[mqdz]/)

  leftscore = 0
  left.each do |letter|
    case letter
      when "w"
        leftscore += 4
      when "p"
        leftscore += 3
      when "b"
        leftscore += 2
      when "s"
        leftscore += 1
    end
  end

  rightscore = 0
  right.each do |letter|
    case letter
      when "m"
        rightscore += 4
      when "q"
        rightscore += 3
      when "d"
        rightscore += 2
      when "z"
        rightscore += 1
    end
  end

  if leftscore > rightscore
    "Left side wins!"
  elsif leftscore < rightscore
    "Right side wins!"
  else
    "Let's fight again!"
  end
end

# 9
# You have to write a calculator that receives strings for input. The dots will represent the number in the equation. There will be dots on one side, an operator, and dots again after the operator. The dots and the operator will be separated by one space.
# Here are the following valid operators :
# + Addition
# - Subtraction
# * Multiplication
# // Integer Division
# Your Work (Task)
# You'll have to return a string that contains dots, as many the equation returns. If the result is 0, return the empty string. When it comes to subtraction, the first number will always be greater than or equal to the second number.

def dot_calculator(equation)
  array = equation.split(' ')
  first = array[0].length
  second = array[2].length
  operator = array[1]
  total = calc(operator, first, second)
  string = ''
  total.times do
    string << '.'
  end
  string
end

def calc(operator, first, second)
  case operator
  when '+' then (first + second)
  when '-' then (first - second)
  when '*' then (first * second)
  when '//' then (first / second)
  end
end

# 10
# Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible,
# containing distinct letters - each taken only once - coming from s1 or s2.

# def longest(a1, a2)
#   str = a1 + a2
#   str.split('').sort.uniq.join('')
# end

# refactored. select unique before sorting.
def longest(a1, a2)
  str = a1 + a2
  str.split('').uniq.sort.join('')
end
