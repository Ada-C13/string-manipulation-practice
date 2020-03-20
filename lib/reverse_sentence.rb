
# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence == nil

  (my_sentence.size/2).times do |x|
    reverse_range(my_sentence, 0, my_sentence.size-1, x)
  end
end

# TO DO: find every "word" in the sentence and reverse the subarray


def reverse_range(my_sentence, left, right, x)
  hold_left = my_sentence[left+x]
  my_sentence[left+x] = my_sentence[right-x]
  my_sentence[right-x] = hold_left
end
