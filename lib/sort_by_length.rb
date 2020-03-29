# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n)
# Space complexity: O(1)
def sort_by_length(my_sentence)
  arr = my_sentence.split(" ")

  arr.each_with_index do |word,index|
    previous_word = arr[index - 1]

    if index == 0 
      # do nothing
    elsif word.length < previous_word.length
      arr[index - 1], arr[index] = word, previous_word
    end
  end

  return arr
end
