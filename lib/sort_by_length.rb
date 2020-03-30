#  A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n squared) because it has two loops one contained in another each (could) go the length of the array.
# Space complexity:  O(n) because it gives back a whole new array starting from a string. 
def sort_by_length(my_sentence)
 
  array = my_sentence.split(/\s/)

  # using selection sort here
  i = 0
  while i < array.length - 1
    min_index = i
    j = i + 1
    while j < array.length
      if array[j].length < array[min_index].length
        min_index = j
      end
      j += 1
    end
    if min_index != i
      temp = array[min_index]
      array[min_index] = array[i]
      array[i] = temp
    end
    i += 1
  end
  
  return array

end
