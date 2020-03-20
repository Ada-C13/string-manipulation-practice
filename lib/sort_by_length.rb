# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)

def sort_by_length(my_sentence)
  i = 0
  sentence_array = my_sentence.split(" ")

  while i < (sentence_array.length)-1
    j = 0
    while j < (sentence_array.length)-i-1
      if (sentence_array[j].length) > (sentence_array[j+1].length)
        temp = sentence_array[j]
        sentence_array[j] = sentence_array[j+1]
        sentence_array[j+1] = temp
      end
      j += 1
    end
    i += 1
  end
  return sentence_array
end
