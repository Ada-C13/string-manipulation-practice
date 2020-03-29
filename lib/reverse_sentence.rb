# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil? || my_sentence.length <= 1

  words_and_spaces = split_sentence(my_sentence)
  my_sentence.clear
  words_and_spaces.each do |string|
    my_sentence.prepend(string)
  end

  return my_sentence
  # raise NotImplementedError
end

def split_sentence(sentence)
  split_sentence = sentence.scan(/\S+|\s/)
end