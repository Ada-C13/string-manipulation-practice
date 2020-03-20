# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil? || my_sentence.empty?

  # reverse sentence by character
  first_index = 0
  last_index = my_sentence.length - 1

  while first_index < last_index
    temp = my_sentence[first_index]
    my_sentence[first_index] = my_sentence[last_index]
    my_sentence[last_index] = temp
    first_index += 1
    last_index -= 1
  end

  # identifies the boundaries of words by finding the spaces
  find_spaces = []
  my_sentence.length.times do |index|
    find_spaces << index if my_sentence[index] == " "
  end
  find_spaces << my_sentence.length # add the index of the last space (i.e., the end of the sentence)
  
  # reverse each word
  first_index = 0

  find_spaces.each do |end_of_word|
    last_index = end_of_word - 1

    while first_index < last_index
      temp = my_sentence[first_index]
      my_sentence[first_index] = my_sentence[last_index]
      my_sentence[last_index] = temp
      first_index += 1
      last_index -= 1
    end
    
    first_index = end_of_word + 1
  end
  
  return my_sentence
end