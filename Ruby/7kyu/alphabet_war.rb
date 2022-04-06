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
