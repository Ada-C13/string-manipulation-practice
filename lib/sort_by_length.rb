# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n) - loops dependent on length of input
# Space complexity: O(n) - size of array is dependent on input
def sort_by_length(my_sentence)
  return [] if my_sentence == ""

  array = my_sentence.split
  first_word = array[0]
  (1..array.length-1).each do |i|
    current_word = array[i]
    if current_word.length < first_word.length
      array[i] = first_word
      array[i-1] = current_word
    end
    first_word = current_word
  end

  return array
end