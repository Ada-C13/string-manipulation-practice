# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n2)
# Space complexity: O(1)
def sort_by_length(my_sentence)
  return [] if my_sentence == ""
    
  words_arr = my_sentence.split(" ")
  i = 0 
  while i < words_arr.length-1
    min_index = i 
    j = i + 1 
    while j < words_arr.length 
      if words_arr[j].length < words_arr[min_index].length
        min_index = j 
      end 
      j += 1
    end 
    if min_index != i 
      temp = words_arr[min_index]
      words_arr[min_index] = words_arr[i]
      words_arr[i] = temp
    end 
    i += 1 
  end 
  return words_arr
end


#                      
# [3,10,8,2,6] | [2,10,8,3,6] | [2,3,8,10,6] [2,3,6,8,10]
#  i        j  |     i     j  |      i    j
#         m    |         m    |           m 
