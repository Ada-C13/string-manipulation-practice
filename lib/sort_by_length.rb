# A method which will return an array of the words in the string
# sorted by the length of the word (ascending order).

# using insertion sort
# time complexity: O(n^2) where n is the number of words in the sentence
# space complexity: O(1)
def sort_by_length(sentence)
  word_arr = sentence.split(" ")

  for j in 1...word_arr.length
    key_word = word_arr[j]
    i = j - 1

    while i >= 0 && word_arr[i].length > key_word.length
      # swap necessary, so update word_arr[i+1] with the value at word_arr[i]
      word_arr[i+1] = word_arr[i]
      i -= 1
    end
    
    word_arr[i+1] = key_word
  end 

  return word_arr
end