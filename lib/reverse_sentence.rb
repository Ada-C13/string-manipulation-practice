# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  first_index = 0
  last_index = my_sentence.length - 1

  until first_index == my_sentence.length / 2
    temp = my_sentence[first_index]
    my_sentence[first_index] = my_sentence[last_index]
    my_sentence[last_index] = temp
    first_index += 1
    last_index -= 1
  end
  
end


def slipt_sentence(my_sentence)
  # split the sentence to words
  array = my_sentence.split(" ")
  # switch the last and first element
  first_index = 0
  last_index = array.length - 1
  # switch the second first and second last element
  # ...
  # end
  until first_index == array.length / 2
    temp = array[first_index]
    array[first_index] = array[last_index]
    array[last_index] = temp
    first_index += 1
    last_index -= 1
  end
  return array
end

# p slipt_sentence("Yoda is awesome!")

# ["awesome!", "is", "Yoda"]
