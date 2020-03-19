# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n^2)
def sort_by_length(my_sentence)
  return [] if my_sentence.length == 0
  words = my_sentence.split(" ")
  ordered_words = []

  words.length.times do
    longest_word = String.new
    words.each do |word|
      if word.length >= longest_word.length
        longest_word = word
      end
    end
    ordered_words.insert(0, longest_word)
    words.delete(longest_word)
  end 

  return ordered_words
  # raise NotImplementedError, "Method not implemented"
end
