# ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything but exactly 4 digits
# or exactly 6 digits.

# If the function is passed a valid PIN string, return true, else return false.

def validate_pin(pin)
  pin.length == 6 && pin.match?(/^\d{6}$/) || pin.length == 4 && pin.match?(/^\d{4}$/)
end
