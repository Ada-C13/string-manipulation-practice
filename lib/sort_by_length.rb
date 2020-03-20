# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
def sort_by_length(my_sentence)
  array = my_sentence.split(" ")
  length = array.length

  i = 1
  while i < length
    to_insert = array[i]
    j = i
    # search in the sorted portion of the array
    # for the correct position to insert array[i]
    while j > 0 && array[j - 1] > to_insert
      array[j] = array[j - 1]
      j -= 1
    end
    array[j] = to_insert
    i += 1
  end

  return array
end
