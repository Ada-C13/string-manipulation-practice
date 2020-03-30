# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n) -> n because iterates over the length of the array.
# Space complexity: O(1)

def sort_by_length(my_sentence)
  
  sentence_arr = my_sentence.split(" ")
  return sentence_arr if sentence_arr.length <= 1 

  changed = false

  while !changed
    for index in (0...sentence_arr.length - 1)
      if sentence_arr[index].length > sentence_arr[index + 1].length
        sentence_arr[index], sentence_arr[index + 1] = sentence_arr[index + 1], sentence_arr[index]
        changed = true
      end
    end
  end
  return sentence_arr
end
