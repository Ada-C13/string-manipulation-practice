# A method which will return an array of the words in the string
# sorted by the length of the word.

# Time complexity: ? O(n^2) b/c a nested while loop inised a while loop
# Space complexity: ? O(n)

def sort_by_length(my_sentence)
  array = my_sentence.split(" ")
  i = 1
  while i < array.length()
    temp = array[i]
    j = i - 1
    while j >= 0 && temp.length() < array[j].length()
      array[j+1] = array[j]
      j -=1
    end
    array[j+1] = temp
    i += 1
  end
  return array
end  


