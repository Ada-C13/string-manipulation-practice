# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)

def sort_by_length(my_sentence)
  words_array = my_sentence.split(" ")

  length = words_array.length

  #insertion sort
  i = 1
  while i < length
    to_insert = words_array[i]
    j = i
    while j > 0 && words_array[j - 1].length > to_insert.length
      words_array[j] = words_array[j - 1]
      j -= 1
    end
    words_array[j] = to_insert
    i += 1
  end
  return words_array

  # #selection sort
  # i = 0
  # while i < length - 1
  #   min_index = i
  #   j = i + 1
  #   while j < length #finding the min
  #     if words_array[j].length < words_array[min_index].length
  #       min_index = j
  #     end
  #     j += 1
  #   end
  #   if min_index != i
  #     temp = words_array[min_index]
  #     words_array[min_index] = words_array[i]
  #     words_array[i] = temp
  #   end
  #   i += 1
  # end
  # return words_array

  # #bubble sort
  # i = 0
  # while i < length - 1
  #   j = 0
  #   while j < length - i - 1
  #     if words_array[j].length > words_array[j + 1].length
  #       temp = words_array[j]
  #       words_array[j] = words_array[j + 1]
  #       words_array[j + 1] = temp
  #     end
  #     j += 1
  #   end
  #   i += 1
  # end
  # return words_array
end
