# *****************
# Write ruby code to return the character that is x steps behind in the alphabet.
# If you get to z, the next character is a. So, it's an endless loop

def get_previous_char(char, x)
  base = 'a'.ord
  z = 'z'.ord
  target = (char.ord - x - base) % 26 + base
  target.chr
end
