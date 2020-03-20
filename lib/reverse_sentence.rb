# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  return [] if my_sentence == nil
  first_char = my_sentence[0]
  (my_sentence.length/2).times do |i|
    my_sentence[i] = my_sentence[my_sentence.length - 1 - i]
    my_sentence[my_sentence.length - 1 - i] = first_char
    first_char = my_sentence[1 + i]
  end

  first_index = 0
  last_index = 0
  my_sentence.length.times do |i|
    if i == my_sentence.length - 1
      last_index = i
      first_character = my_sentence[first_index]
      if ((last_index - first_index) % 2) == 0
        ((last_index - first_index) / 2).times do |x|
          my_sentence[first_index] = my_sentence[last_index]
          my_sentence[last_index] = first_character
          first_index += 1
          last_index -= 1
          first_character = my_sentence[first_index]
        end
      else
        (((last_index - first_index) / 2) + 1).times do |x|
          my_sentence[first_index] = my_sentence[last_index]
          my_sentence[last_index] = first_character
          first_index += 1
          last_index -= 1
          first_character = my_sentence[first_index]
        end
      end
    end
    if my_sentence[i] == " "
      check_next = 1
      new_first_index = i + check_next
      until my_sentence[i + check_next] != " "
        check_next += 1
      end
      last_index = i - 1
      first_character = my_sentence[first_index]
      if ((last_index - first_index) % 2) == 0
        ((last_index - first_index) / 2).times do |x|
          my_sentence[first_index] = my_sentence[last_index]
          my_sentence[last_index] = first_character
          first_index += 1
          last_index -= 1
          first_character = my_sentence[first_index]
        end
      else
        (((last_index - first_index) / 2) + 1).times do |x|
          my_sentence[first_index] = my_sentence[last_index]
          my_sentence[last_index] = first_character
          first_index += 1
          last_index -= 1
          first_character = my_sentence[first_index]
        end
      end
      first_index = i + check_next
    end
  end
    
  return my_sentence
end
