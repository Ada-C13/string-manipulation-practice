# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  return "" if my_sentence == "" 
  return nil if my_sentence == nil
  # return my_sentence if my_sentence.split.length == 1
  strings_array = my_sentence.split(/ /, -1)

  first_index = 0
  last_index = strings_array.length - 1

  reversed_array = []
  while first_index < strings_array.length
    reversed_array << strings_array[last_index]
    last_index -=1
    first_index +=1
  end
  reversed_sentence = reversed_array.join(" ")
  return reversed_sentence

end
