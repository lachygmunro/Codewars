# Make a program that filters a list of strings and returns a list with only your friends name in it.

# If a name has exactly 4 letters in it, you can be sure that it has to be a friend of yours! Otherwise,
# you can be sure he's not your friend.

# def friend(friends)
#   friends.select { |name| name.length == 4 }
# end

def friend(friends)
  friends.select do |friend|
    friend.match(/^\w{4}$/)
  end
end
