// Return the number (count) of vowels in the given string.

// We will consider a, e, i, o, u as vowels for this Kata (but not y).

// The input string will only consist of lower case letters and/or spaces.

def get_count(input_str)
  vowels = ["a", "e", "i", "o", "u"]
  counter = 0
  input_str.chars.each do |letter|
    if vowels.include? letter
      counter += 1
    end
  end
  counter
end
