# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?

  return "" if my_sentence.length == 0

  my_sentence_as_array = ("#{my_sentence} !").split(/\s/)
  my_sentence_as_array.pop

  first = 0
  last = my_sentence_as_array.length - 1

  while first < last
    temp = my_sentence_as_array[first]
    my_sentence_as_array[first] = my_sentence_as_array[last]
    my_sentence_as_array[last] = temp

    first += 1
    last -= 1
  end

  new_value = my_sentence_as_array.join(" ")

  my_sentence.replace(new_value)

  return my_sentence
end
