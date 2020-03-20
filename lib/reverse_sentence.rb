# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)? because we are doing two loops but we drop the constants
# Space complexity: O(1) -- I don't feel confident about this because of the creation of split_sentence and/or reversed
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  
  split_sentence = my_sentence.scan(/\S+|\s+/)
  reversed = ""

  i = 0

  while i < split_sentence.length do
    reversed += split_sentence[-(i+1)]
    i += 1
  end

  reversed.length.times do |n|
    my_sentence[n] = reversed[n]
  end

  return my_sentence
end