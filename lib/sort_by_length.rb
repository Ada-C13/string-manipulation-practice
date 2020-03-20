# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
require "pry"
def sort_by_length(my_sentence)
  array = my_sentence.scan(/\b[\w']+\b/)

  i = 0
  while i < (array.length - 1)
    min_index = i
    j = i+1
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
