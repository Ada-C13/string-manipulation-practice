# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2) n = array.length
# Space complexity: O(1) only one array is being made
def sort_by_length(my_sentence)
  array = my_sentence.split
  i = 0

  while i < (array.length - 1)
    x = 0
    while x < (array.length-i) -1
      if array[x].length > array[x+1].length
        hold = array[x]
        array[x] = array [x+1]
        array[x+1] = hold
      end
      x += 1
    end
    i += 1
  end

  return array
end