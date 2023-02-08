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
