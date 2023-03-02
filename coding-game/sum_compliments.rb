# ******************
# Problem:
# Given a list of numbers, return whether any two sums to k. For example, given
# [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
# Bonus: Can you do this in one pass?

require 'set'
def two_sum(nums, k)
  seen = Set.new
  nums.each do |num|
    complement = k - num
    return true if seen.include?(complement)
    seen.add(num)
  end
  false
end


# We are using a Set instead of an array because a set provides constant time complexity O(1)
# for adding and checking for existence of elements. This is more efficient than an array,
# which has a time complexity of O(n) for checking for the existence of an element.
# In this case, using a set can help improve the overall time complexity of the algorithm.
