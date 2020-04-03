def reverse_sentence(my_sentence)
  return my_sentence if my_sentence == nil || my_sentence.length < 2

  # Reverse the whole sentence
  reverse(my_sentence, 0, my_sentence.length - 1)
  
  i = 0
  j = 0

  while j < my_sentence.length
    # If not a space, move j to the next element, forming a word b/n i and j
    if my_sentence[j] != ' '
      j += 1
    else
    # When letters are collected, reverse the word and reset the beginning of the word
      reverse(my_sentence, i, j-1)
      j += 1
      i = j
    end
  end

  # Reverse the last word
  reverse(my_sentence, i, j-1)
  return my_sentence
end

# Abstract helper method
def reverse(string, i, j)
  while i < j
    temp = string[i]
    string[i] = string[j]
    string[j] = temp
    i += 1
    j -= 1
  end
end