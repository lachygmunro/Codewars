# Take 2 strings s1 and s2 including only letters from ato z. Return a new sorted string, the longest possible,
# containing distinct letters - each taken only once - coming from s1 or s2.

# def longest(a1, a2)
#   str = a1 + a2
#   str.split('').sort.uniq.join('')
# end

# refactored to select unique before sorting.
def longest(a1, a2)
  str = a1 + a2
  str.split('').uniq.sort.join('')
end
