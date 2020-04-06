# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n) - loops dependent on length of input
# Space complexity: O(n) - size of array is dependent on input

# Take a look at the implementations for sorting I gave as an example, as this doesn't actually sort things in general. You can't sort a generic array with only one pass through the array. It looks like you started bubblesort, but didn't put the outer loop in.

def sort_by_length(my_sentence)
  return [] if my_sentence == ""

  array = my_sentence.split
  # swapped is not necessary for code to work, but reduces number of loops if inner loop runs without swapping anything (no swaps means everything is sorted)
  swapped = true
  i = 0
  while i < array.length-1 && swapped
    j = 0
    # Assume you won't have to make a swap
    swapped = false
    while j < array.length-i-1
      # word being checked is at the index of j (starts at 0 & increments by 1 each iteration)
      current_word = array[j]
      # if current word is longer then the word after it,
      if current_word.length > array[j+1].length
        # word at current index is swapped with the word at the next index
        array[j] = array[j+1]
        array[j+1] = current_word
        # since we just made a swap, set swapped to true
        swapped = true
      end
      # increment j so the next word will be checked on the next iteration
      j += 1
    end
    i += 1
  end

  return array
end