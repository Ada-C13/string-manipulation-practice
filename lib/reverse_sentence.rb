# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  return nil if !my_sentence.is_a?(String)
  my_sentence = reverse(my_sentence, 0, my_sentence.length - 1)
  previous_index = 0

  my_sentence.length.times do |i|
    if /\s/ === my_sentence[i]
      reverse(my_sentence, previous_index, i - 1)
      previous_index = i + 1
    end
  end

  return reverse(my_sentence, previous_index, my_sentence.length - 1)
end


def reverse(my_string, first_index, last_index)
  while first_index < last_index
    temp = my_string[first_index]
    my_string[first_index] = my_string[last_index]
    my_string[last_index] = temp
    first_index += 1
    last_index -= 1
  end

  return my_string
end
