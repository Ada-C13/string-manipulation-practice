# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2) n = my_sentence.length
# Space complexity: O(1) only one array gets made of that sentence will ever be made
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  return "" if my_sentence == ""

  sent_array = my_sentence.split(/(\s)/)
  i = 0
  last_index = -1

  (sent_array.length/2).times do |i|
    hold = sent_array[i]
    sent_array[i] = sent_array[last_index]
    sent_array[last_index] = hold
    last_index -= 1
  end

  new = sent_array.join
  my_sentence.length.times do |i|
    my_sentence[i] = new[i]
  end

  return my_sentence
end