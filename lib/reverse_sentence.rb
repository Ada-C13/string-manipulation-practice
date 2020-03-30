# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) it is 3 n but we drop the constant.
# Space complexity: O(n) because creates a couple of arrays in the proccess.


def reverse_sentence(my_sentence)
  # raise NotImplementedError
  return my_sentence if my_sentence.nil? || my_sentence.empty?

  array = my_sentence.split(/\s(\s$)?/)

  reverse_array = []
  i = array.length - 1

  while i >= 0
    reverse_array << array[i]
    i -= 1
  end

  joined_sentence = reverse_array.join(" ")
  j = 0
  while j < joined_sentence.length
    my_sentence[j] = joined_sentence[j]
    j += 1
  end

end
