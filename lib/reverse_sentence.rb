# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def split_my_sentence(sentence)
  sentence.scan(/\S+|\s/)
end

def reverse_sentence(my_sentence)
  if my_sentence != nil || my_sentence == ""
    array = split_my_sentence(my_sentence)

    my_sentence.clear

    array.each do |element|
      my_sentence.prepend(element)
    end
  else
    return my_sentence
  end
end
