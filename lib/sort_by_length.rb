# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
def sort_by_length(my_sentence)
  return [] if my_sentence == ""
  
  #Convert the string to an array of strings
  strings_array = my_sentence.split(/ /)
  
  # Sort (use selection)the length of each element 
  i = 0 
  while i < strings_array.length - 1
    min_index = i 
    j = i+1
    while j < strings_array.length
      if strings_array[j].length < strings_array[min_index].length
        min_index = j
      end
      j +=1
    end
    if min_index != i
      temp = strings_array[min_index]
      strings_array[min_index] = strings_array[i]
      strings_array[i] = temp
      return strings_array
    end
    i +=1
  end
end



