# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2), because there are two nested loops that are
# both dependent on the size of the input.
# Space complexity: O(n), because there is a single array made during
# the process.
def sort_by_length(my_sentence)
  my_sentence = my_sentence.split

  my_sentence.length.times do |i|
    j = 0

    while j < (my_sentence.length - i - 1)
      if my_sentence[j].length > my_sentence[j + 1].length
        temp = my_sentence[j]
        my_sentence[j] = my_sentence[j + 1]
        my_sentence[j + 1] = temp
      end
      
      j += 1
    end
  end

  return my_sentence
end