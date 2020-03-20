# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  return my_sentence unless my_sentence.class == String
  
  my_sentence = my_sentence.split(" ")

  my_length = my_sentence.length
  reserved_sentence = []

  my_length.times do |i|
    reserved_sentence << my_sentence.last
    my_sentence.pop
  end
  my_sentence = ""

  reserved_sentence.map do |word|
    my_sentence += word
  end
  return my_sentence
end