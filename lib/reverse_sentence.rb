# A method last reverse the words in a sentence, in place.
# Time complexity: O(n) --> Because iterates over the length of the array.
# Space complexity: o(1) --> Because it does not creates new aditional variables based on the array length.

def reverse(string, start ,last)
  i = start
  j = last

    while i < j
      string[j], string[i] = string[i], string[j]
      i += 1
      j -= 1
    end
  return string
end


def reverse_sentence(my_sentence)
  return nil if my_sentence == nil

  new_sentence = reverse(my_sentence, 0, my_sentence.length - 1)
  # Creates state, if it is within a word the state will be true
  start_word = false
  start = 0

  for index in (0...new_sentence.length)

    if new_sentence[index] != " " && !start_word
     start = index
     start_word = true
    end
    if new_sentence[index] == " " && start_word 
      reverse(new_sentence, start, index - 1)
      start = index
      # Set the state to false if the word ends.
      start_word = false
    end

    if index == new_sentence.length - 1 && start_word 
      reverse(new_sentence, start, index)
    end
  end
  return new_sentence
end
