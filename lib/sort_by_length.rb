# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) -> even though best case would be O(n)
# Space complexity: O(1) - because no extra array created?


# using bubble sort for this method
def sort_by_length(my_sentence)
  sentence_array = my_sentence.split()
  length = sentence_array.length
  i = 0
  swapped = true
  while i < length - 1 && swapped #first loop
    j = 0
    swapped = false
    while j < length - 1 - i  # second loop
      if sentence_array[j].length > sentence_array[j+1].length
        temp = sentence_array[j] 
        sentence_array[j] = sentence_array[j+1]
        sentence_array[j+1] = temp
        swapped = true
      end
      j += 1 
    end
    i += 1
  end
  return sentence_array
end
