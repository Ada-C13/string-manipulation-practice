# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)

def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?

  array = my_sentence.split(/(\S+)|(\W)/)

  first_index = 0
  last_index = (array.length) - 1
  
  while first_index < last_index
    temp = array[first_index]
    array[first_index] = array[last_index]
    array[last_index] = temp
    first_index += 1
    last_index -= 1
  end

  array = array.join("")

  array.length.times do |n|
    my_sentence[n] = array[n]
  end
  return my_sentence 
end
