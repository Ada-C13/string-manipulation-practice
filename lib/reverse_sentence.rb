# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2)
# Space complexity: O(1)
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  cloned_sentence = my_sentence.clone
  index_from_begining = 0
  word = ""
  cloned_sentence.length.times do |i|
    index = -1 - i
    if cloned_sentence[index] == " "
      my_sentence[index_from_begining] = cloned_sentence[index]
      index_from_begining += 1
    elsif cloned_sentence[index - 1] != " "
      word.insert(0,cloned_sentence[index])
    else
      word.insert(0,cloned_sentence[index])
      word.length.times do |x|
        my_sentence[index_from_begining] = word[x]
        index_from_begining += 1
      end
      word = ""
    end
  end

  word.length.times do |x|
    my_sentence[index_from_begining] = word[x]
    index_from_begining += 1
  end
  return my_sentence
end
