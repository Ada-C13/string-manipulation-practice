# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil 

  split_sentence = my_sentence.scan(/\S+|\s+/) 
  reversed_sentence = ""
  i = 0 
  while i < split_sentence.length do 
    reversed_sentence += split_sentence[-(i+1)]
    i += 1
  end 
  return reversed_sentence
end
