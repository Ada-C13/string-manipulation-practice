# A method which will return an array of the words in the string sorted by the length of the word
# Time complexity : O(nˆ2) (nested loops)
# Space complexity: O(n)
# Declaring an array of size n (arr) adds to the space complexity by a factor of O(n)
# N (or n) is the number of characters in the input String

def sort_by_length(my_sentence)

  return [] if my_sentence.length == 0
  arr = my_sentence.split(" ")
  i   = 0
  while i < arr.length - 1
    min = i
    j   = i+1
    while j < arr.length
      min = j if arr[j].length < arr[min].length
      j  += 1
    end
    if min != i
      temp     = arr[min]
      arr[min] = arr[i]
      arr[i]   = temp
    end
    i += 1
  end
  return arr

end

# my_sentence = "string with many words"
# puts sort_by_length(my_sentence)
