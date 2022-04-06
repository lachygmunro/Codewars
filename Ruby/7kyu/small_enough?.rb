# You will be given an array and a limit value. You must check that all values in the array are below or
# equal to the limit value. If they are, return true. Else, return false.

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
