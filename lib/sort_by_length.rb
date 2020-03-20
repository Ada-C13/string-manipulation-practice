# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  #insertion sort 
  array_words = my_sentence.split(" ")
  
  i = 1
  while i < array_words.length 
    j = i 
    while j > 0 && array_words[j - 1].length > array_words[j].length
      array_words[j - 1], array_words[j] = array_words[j],array_words[j - 1]
      j -= 1
    end
    i += 1
  end
  
  return array_words
  end
  