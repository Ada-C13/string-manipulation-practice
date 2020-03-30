# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  as_array = my_sentence.split(" ")

  i = 0
  while i < as_array.length
    j = 0
    while j < as_array.length - i - 1
      if as_array[j].length > as_array[j + 1].length
        temp = as_array[j]
        as_array[j] = as_array[j + 1]
        as_array[j + 1] = temp 
      end

      j += 1
    end
    i += 1
  end

  return as_array
end
