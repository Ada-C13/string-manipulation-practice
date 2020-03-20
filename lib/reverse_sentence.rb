# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil? || my_sentence.empty?
  
  split_sentence = my_sentence.split(/[\s,]+/)
  first_index = 0
  last_index = split_sentence.length - 1

  while first_index < last_index
    temp = split_sentence[first_index]
    split_sentence[first_index] = split_sentence[last_index]
    split_sentence[last_index] = temp
    first_index += 1
    last_index -= 1
  end

  return split_sentence
end
