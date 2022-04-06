# You have to write a calculator that receives strings for input. The dots will represent the number in the
# equation. There will be dots on one side, an operator, and dots again after the operator. The dots and the
# operator will be separated by one space.

# Here are the following valid operators :
# + Addition
# - Subtraction
# * Multiplication
# // Integer Division

# Your Work (Task)
# You'll have to return a string that contains dots, as many the equation returns. If the result is 0, return
# the empty string. When it comes to subtraction, the first number will always be greater than or equal to the
# second number.

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
