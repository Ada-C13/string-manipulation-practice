# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)
require 'pry'

def reverse_sentence(my_sentence)
  return nil if my_sentence.nil? 

  i = 0
  arr = []
  temp = []

  while i < my_sentence.length
    if my_sentence[i] != " "
      temp << my_sentence[i]
    else
      arr << " " + temp.join
      temp = []
    end
    i += 1
  end

  arr << temp.join
  k = arr.length - 1
  i = 0

  while k >= 0
    if i < k
      temp = arr[i]
      arr[i] = arr[k] 
      arr[k] = temp
      i += 1
    end
    k -= 1
  end
  
  return arr.join
end