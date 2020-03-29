# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n2)
# Space complexity: 0(n)

def sort_by_length(my_sentence)
  words_array = my_sentence.split(" ")
  # bubble sort
  i = 0
  while i < ((words_array.length) - 1)
    j = i + 1
    while j < ((words_array.length) - i)
      if words_array[j - 1].length > words_array[j].length # swap
        temp = words_array[j - 1]
        words_array[j - 1] = words_array[j]
        words_array[j] = temp
      end
      j += 1
    end
    i += 1
  end
  return words_array
end