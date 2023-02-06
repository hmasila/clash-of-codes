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
