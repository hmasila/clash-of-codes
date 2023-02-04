# ***********************
# Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

# An input string is valid if:

# Open brackets must be closed by the same type of brackets.

# Open brackets must be closed in the correct order.

# Note that an empty string is also considered valid.

def is_valid(s)
  stack = []
  mapping = {')' => '(', '}' => '{', ']' => '['}

  s.each_char do |char|
    if mapping.key?(char)
      top_element = stack.pop || '#'
      return false if mapping[char] != top_element
    else
      stack.push(char)
    end
  end

  stack.empty?
end

# *******************
# Write a ruby program to get the number that only appears once in an array

def find_single_number(nums)
  counts = Hash.new(0)
  nums.each { |num| counts[num] += 1 }
  counts.key(1)
end

# Example usage
nums = [1, 2, 2, 3, 3, 4, 4, 5, 5]
puts find_single_number(nums) # Output: 1

# ************************
# Given a string s return the max path you can get to move from one letter to another identical one in s. If there's no such thing, return -1

def max_path(s)
  max_distance = -1
  char_index = {}

  # iterate over each character in the string
  s.each_char.with_index do |char, index|
    if char_index.key?(char)
      # if the character is already present in the hash, calculate the distance
      distance = index - char_index[char] - 1
      max_distance = distance if distance > max_distance
    else
      # if the character is not present in the hash, add it
      char_index[char] = index
    end
  end

  max_distance
end

