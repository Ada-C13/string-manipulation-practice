# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) - Loop nested inside another loop
# Space complexity: O(n) - create an array to store string
def sort_by_length(my_sentence)
  array = my_sentence.split
  length = array.length
  
  index = 0
  while index < (length - 1)
    other_index = 0
    while other_index < (length - index - 1)
      if array[other_index].length > array[other_index + 1].length
        temp = array[other_index]
        array[other_index] = array[other_index + 1]
        array[other_index + 1] = temp
      end
      other_index += 1
    end
    index += 1
  end
  
  return array
end
