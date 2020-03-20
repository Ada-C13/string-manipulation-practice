# A method which will return an array of the words in the string
#  sorted by the length of the word.

# Using Insertion Sort - O(n^2)

# Time complexity: O(n^2) - where n is a number of chars in a string (see below)
# >>> .gsub will eveluate every character
# >>> Insertion Sort will evaluate words in an array

# Space complexity: O(n) where n is a number of chars in a string
# (required to create an array)

def sort_by_length(my_sentence)
  array = my_sentence.gsub(/[^a-zA-Z ]/, "").split(" ")
  i = 1
  while i < array.length
    insert = array[i]
    j = i - 1
    while j >= 0 && array[j].length > insert.length
      array[j+1] = array[j]
      j -= 1
    end
    array[j+1] = insert
    i += 1
  end
  return array
end