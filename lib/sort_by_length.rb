# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: o(n^2) two nested while loops based on input
# Space complexity: o(n) one array made (word_array)
def sort_by_length(my_sentence)
  if my_sentence.length == 0
    return []
  end

  word_array = my_sentence.split(" ")
  length = word_array.length
  i = 0
  
  while i < length - 1
    min_index = i
    j = i + 1
    while j < length
      if word_array[j].length < word_array[min_index].length
        min_index = j
      end
      j += 1
    end
    if min_index != i
      temp = word_array[min_index]
      word_array[min_index] = word_array[i]
      word_array[i] = temp
    end
    i += 1
  end 
  return word_array
end
