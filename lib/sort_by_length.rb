# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(N^2)
# Space complexity: O(N)
def sort_by_length(my_sentence)
  if my_sentence == ""
    return []
  else 
    my_arr = my_sentence.split
    sorted_arr = []
    index = 0
    sorted_arr<< my_arr.shift
    my_arr.each do |word|
      if word.length < sorted_arr[index].length 
        sorted_arr.insert(index,word)
      elsif index+1 == sorted_arr.size
        sorted_arr<< word
      end
      index +=1
    end
  end
  return sorted_arr
end
