# ********************
# You will be given a number num in the form of a string.
# You will have to multiply all the digits of the number and present it as integer output. Write Ruby code for this

def product_of_digits(num)
  result = 1
  num.each_char { |c| result *= c.to_i }
  result
end
