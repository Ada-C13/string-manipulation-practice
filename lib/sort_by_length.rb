# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n2)
# Space complexity: O(1)
def sort_by_length(my_sentence)
  array = my_sentence.split(' ')
  insertion_sort(array)
end

def insertion_sort(array)
  i = 1
  while i < array.length
    to_insert = array[i]
    j = i
    # search in the sorted portion of the array
    # for the correct position to insert array[i]
    while j > 0 && array[j-1].length > to_insert.length
      array[j] = array[j-1]
      j -= 1
    end
    array[j] = to_insert
    i += 1
  end
  return array
end