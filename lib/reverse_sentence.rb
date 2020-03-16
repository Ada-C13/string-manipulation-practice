# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  # reverse the whole string
  new_sentence = ''
  my_sentence.length.times do |i|
    element = my_sentence[i]
    new_sentence[i] = my_sentence[-(i+1)]
    new_sentence[-(i+1)] = element
  end

  i = 0
  word = ''
  result = ''
  while i < new_sentence.length
    if new_sentence[i] != ' '
      word = new_sentence[i] + word
    else
      result = result + word
      word = ''
      result = result + ' '
    end
    i += 1
  end
  result = result + word

  result.length.times do |i|
    my_sentence[i] = result[i]
  end
  return true
end