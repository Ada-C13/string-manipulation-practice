# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: 0(1)

def sort_by_length(my_sentence)
  if my_sentence == "" 
    return []
  end

  array = my_sentence.split

  i = 1
  while i < array.length 
    j=i 
    while j > 0 && array[j-1].length > array[j].length 
      array[j-1],array[j] = array[j], array[j-1]
    end
    i=i+1
  end
  return array 
end