# A method which will return an array of the words in the string
#  sorted by the length of the word.  (Using Insertion Sort)
# Time complexity: O(n^2)
# Space complexity: O(1)
def sort_by_length(my_sentence)
  split_strings = my_sentence.split(" ")
  i = 1

  while i < split_strings.length
    j = i

    while j > 0
      if split_strings[j].length < split_strings[(j-1)].length
        temp = split_strings[j]
        split_strings[j] = split_strings[j-1]
        split_strings[j-1] = temp
      else
        break
      end
      j -= 1
    end

    i += 1
  end

  return split_strings
end
