# Write a method that takes a string and returns a hash
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}
def word_count(word)
  arr = word.split()
  to_inc = []
  arr.map { |w| to_inc << w.downcase }
  unique_words = to_inc.uniq
  word_count = unique_words.map { |w| to_inc.count(w) }
  to_return = {}
  unique_words.map.with_index { |w, i| to_return[w] = word_count[i]}
  to_return
end
