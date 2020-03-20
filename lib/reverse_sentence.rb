# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2)
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  # get all the non-spaces
  array_words = my_sentence.split(" ")
  reverse1 = reverse_array(array_words)

  # get all the spaces 
  array_spaces = my_sentence.split(/\S/).select { |item| item != ""}
  reverse2 = reverse_array(array_spaces)
  
  # merge the two above
  # If the index[-1] of the original sentence is started from space, we will start from space when merging
    final_array = []
    i = 0
    if my_sentence[-1] == " "
      while i < array_spaces.length
        final_array << array_spaces[i]
        # if all the element in array_words have been gone through, break the loop
        break if i == array_words.length
        final_array << array_words[i]
        i += 1
      end
    else 
      while i < array_words.length
        final_array << array_words[i]
        # if all the element in array_spaces have been gone through, break the loop
        break if i == array_spaces.length
        final_array << array_spaces[i]
        i += 1
      end
    end
  
    final_s = ""
    final_array.each do |item|
      final_s += item
    end
  
    return final_s
  end


def reverse_array(array)
  first_index = 0
  last_index = array.length - 1
 
  until first_index == array.length / 2
    temp = array[first_index]
    array[first_index] = array[last_index]
    array[last_index] = temp
    first_index += 1
    last_index -= 1
  end
  return array
end
