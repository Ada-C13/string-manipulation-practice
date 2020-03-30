# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)

def sort_by_length(my_sentence)
  return [] if my_sentence == ""

  words = my_sentence.split
  i = 1
  
  # implement selection sort 
  while i < words.length 
    adjacent_word = words[i]
    j = i 

    while j > 0 && words[j-1].length > adjacent_word.length
      words[j] = words[j-1]
      j -= 1
    end

    words[j] = adjacent_word
    i += 1
  end

  return words
end