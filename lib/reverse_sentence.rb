# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2) - There are two outer loops, which is 2n, drop the 2, so n. Inside the second loop, there is a nested loop for each if statement, which makes ie O(n^2)
# Space complexity: O(1) - the amount and sizet of variables is the same regardless of the input
def reverse_sentence(my_sentence)
  return [] if my_sentence == nil

  # reverse entire sentence
  first_char = my_sentence[0]
  (my_sentence.length/2).times do |i|
    my_sentence[i] = my_sentence[my_sentence.length - 1 - i]
    my_sentence[my_sentence.length - 1 - i] = first_char
    first_char = my_sentence[1 + i]
  end

  first_index = 0
  my_sentence.length.times do |i|
    first_character = my_sentence[first_index]
    # reverse the last word
    if i == my_sentence.length - 1
      reverse_word(i, first_index, first_character, my_sentence)
    elsif my_sentence[i] == " "
      reverse_word(i - 1, first_index, first_character, my_sentence)
      # find new first_index
      first_index = i
      first_index += 1 until my_sentence[first_index] != " "
    end
  end
    
  return my_sentence
end

def reverse_word(last_index, first_index, first_character, my_sentence)
  # add one to handle even and odd lengths
  loops = (last_index - first_index) / 2 + 1
  loops.times do |x|
    my_sentence[first_index] = my_sentence[last_index]
    my_sentence[last_index] = first_character
    first_index += 1
    last_index -= 1
    first_character = my_sentence[first_index]
  end
end