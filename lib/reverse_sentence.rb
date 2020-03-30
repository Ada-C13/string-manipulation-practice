# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2), there is a nested loop in #reverse_word, which runs n operations dependent on the lengths of find_spaces and my_sentence
# Space complexity: O(n), a new element is pushed to the find_spaces array for each space contained in my_sentence

def reverse_by_character(my_sentence)
  first_index = 0
  last_index = my_sentence.length - 1

  while first_index < last_index
    temp = my_sentence[first_index]
    my_sentence[first_index] = my_sentence[last_index]
    my_sentence[last_index] = temp
    first_index += 1
    last_index -= 1
  end

  return my_sentence
end

# this method identifies the boundaries of words by finding the spaces
def find_spaces(my_sentence)
  space_positions = []
  my_sentence.length.times do |index|
    space_positions << index if my_sentence[index] == " "
  end
  space_positions << my_sentence.length # add the index of the last space (i.e., the end of the sentence)
  
  return space_positions
end

def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil? || my_sentence.empty?
  
  reversed_sentence = reverse_by_character(my_sentence)
  space_positions = find_spaces(reversed_sentence)

  # reverses the characters of each word in place, defining a word as anything between the previous space and the next space 
  first_index = 0
  space_positions.each do |end_of_word|
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