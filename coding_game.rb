# *********
# in a world where people get powers by eating magical fruits you will be given nfruits types.
#   there are 3 types of fruits:
#   logia
#   paramecia
#   zoan
#   a logia fruit is valued for 100 beli
#   a paramecia is valued for 75 beli
#   a zoan is only valued for 25 beli
#   output the sum of all the fruits value in beli

value = 0
n = gets.to_i
n.times do
  fruit = gets.chomp

  case fruit.downcase
  when "logia"
    value += 100
  when "paramecia"
    value += 75
  when "zoan"
    value += 25
  else
    puts "Invalid fruit type: #{fruit}"
  end
end

puts "#{value} beli"


# *********************
# sum of uppercase characters in a string

str.scan(/[A-Z]/).length

# **********************

# sum of digits in a string

str.scan(/[0-9]/).length


# ******************

# The elevator floor display had a problem and displayed its log up/down of the day
# with brackets ( for go up one floor and ) for go down one floor.
# The elevator starts on floor 0 and there is no limit to the number of floors
# in both up (positive) and down (negative) directions.

def final_floor(floors)
  floor = 0
  floors.each_char do |c|
    if c == '('
      floor += 1
    elsif c == ')'
      floor -= 1
    end
  end
  floor
end

# ********************
# You will be given a number num in the form of a string.
# You will have to multiply all the digits of the number and present it as integer output. Write Ruby code for this

def product_of_digits(num)
  result = 1
  num.each_char { |c| result *= c.to_i }
  result
end

# *********************
# convert consecutive v's to w

str.gsub(/v+/, 'w')

# **************
# Write ruby code to return only uppercase characters from a string

str.gsub(/[^A-Z]/, '')

# or

str.chars.select{ |c| c.ord >= 65 && c.ord <= 90 }.join


# *****************

# Internationalize each word of the given sentence knowing that :

# - a word is a sequence of non-blank characters.
# - the internationalization of a word is the first letter of this word followed by the number of characters between the first and last letter of this word followed by the last letter of this word.
# - a word with less than or equal to 2 characters should not be internationalized. Write Ruby code for this

def internationalize(sentence)
  words = sentence.split
  internationalized_words = words.map do |word|
    if word.length <= 2
      word
    else
      "#{word[0]}#{word.length - 2}#{word[-1]}"
    end
  end
  internationalized_words.join(" ")
end

# *****************
# Write ruby code to return the character that is x steps behind in the alphabet.
# If you get to z, the next character is a. So, it's an endless loop

def get_previous_char(char, x)
  base = 'a'.ord
  z = 'z'.ord
  target = (char.ord - x - base) % 26 + base
  target.chr
end


# ******************
# The goal of this challenge is to find the maximum of a^2 * b (i.e. a² * b) with the following limit a+b=x.
# Knowing that a and b must be 2 positive non-zero integers.
# Line 1 : Result of the maximum value of a² * b or none when there is no pair of a and b that satisfies the condition that a and b are both positive integers.
# Line 2 : Value of a and b (for the result of the previous line) or nothing if there is no pair of a and b that satisfies the condition that a and b are both positive integers.

def max_a2b(x)
  max = 0
  a_and_b = []
  for a in 1...x
    b = x - a
    result = a * a * (x - a)
    if result > max
      max = result
      a_and_b = [a, x - a]
    end
  end
  if max > 0
    return max, a_and_b
  else
    return "None", []
  end
end


# ***************
# Transform all characters (except for spaces) into the letter "e" and output the result.

message.gsub(/[^\s]/, "e")

# **************************
# Tell how much time in seconds a person spends on the elevator, going from their floor to floor 0.

# Going down each floor takes 3 seconds per. Each stop adds another 2 seconds, plus 2 more seconds for each person getting on the elevator

print "Enter the initial floor: "
floor = gets.to_i
print "Enter the number of stops: "
stops = gets.to_i
print "Enter the number of people getting on at each stop, separated by spaces: "
people = gets.chomp.split(" ").map(&:to_i)

time_spent = 3 * (floor - 0) + 2 * stops + 2 * people.sum

# **********************
# Given mode, one of AND, OR or XOR, determine if a bitwise operation of mode on bin1 and bin2 results in result.

def bitwise_operation(mode, bin1, bin2, result)
  case mode
  when 'AND'
    (bin1 & bin2) == result
  when 'OR'
    (bin1 | bin2) == result
  when 'XOR'
    (bin1 ^ bin2) == result
  else
    false
  end
end
