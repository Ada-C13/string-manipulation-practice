# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2), there is a nested loop, which runs n operations dependent on how many words are in the string
# Space complexity: O(1), the number of variables does not change regardless of the size of the input

def sort_by_length(my_sentence)
  return [] if my_sentence.empty?

  words = my_sentence.split(/\s/)
  i = 1
  while i < words.length 
    j = i
    while j > 0 && words[j-1].length > words[j].length
      temp = words[j]
      words[j] = words[j-1]
      words[j-1] = temp
      j -= 1
    end
    i += 1
  end

  return words
end