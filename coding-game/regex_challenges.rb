# *********************
# sum of uppercase characters in a string

str.scan(/[A-Z]/).length

# **********************

# sum of digits in a string

str.scan(/[0-9]/).length

# *********************
# convert consecutive v's to w

str.gsub(/v+/, 'w')

# **************
# Write ruby code to return only uppercase characters from a string

str.gsub(/[^A-Z]/, '')

# or

str.chars.select{ |c| c.ord >= 65 && c.ord <= 90 }.join
