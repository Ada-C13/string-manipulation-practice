# using BUBBLE SORT
# Time complexity: O(n^2), where n is the number of words in the input sentence
# Space complexity: O(n), where n is the number of words in the input sentence

def sort_by_length(sentence)
  word_arr = sentence.split(" ")

  i = 0
  while i < word_arr.length
    j = 0
    while j < word_arr.length - i - 1
      if word_arr[j].length > word_arr[j+1].length
        temp = word_arr[j]
        word_arr[j] = word_arr[j+1]
        word_arr[j+1] = temp 
      end

      j += 1
    end
    i += 1
  end

  return word_arr
end