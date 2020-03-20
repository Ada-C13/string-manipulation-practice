# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n^2)
def reverse_sentence(my_sentence)
  return my_sentence unless my_sentence.class == String
  
  my_sentence = my_sentence.split("")

  my_length = my_sentence.length
  reverse = []
  my_regex = /[^ ]/
  word = ""
  space = ""

  my_length.times do |i|
    #make a word if it's not a space or char
    if my_regex.match?(my_sentence[i])
      reverse << space if (reverse.length == 0 || word.length == 0)
      word += my_sentence[i]
      space = ""
    #make a space-word if it's a space
    else
      reverse << word if (reverse.length == 0 || space.length == 0)
      space += " "
      word = ""
    end
  end
  #make sure the last word/space makes it into the array
  reverse << word if reverse.last != word
  reverse << space if reverse.last != space

  #now reverse it!
  an_array = []
  reverse.length.times do |i|
    an_array << reverse.pop
  end

  #now put it into a string!
  my_sentence = ""
  an_array.map do |my_word|
    my_sentence += my_word
  end
  return my_sentence
end