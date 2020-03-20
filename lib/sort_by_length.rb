# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?
def sort_by_length(my_sentence)
  raise ArgumentError unless my_sentence.class == String

  sentence_array = my_sentence.split(" ")
  my_array = []
  my_length = sentence_array.length
  
  until my_array.length == my_length
    sentence_array.length.times do |i|
      shortest = sentence_array.min { |x, y| x.length <=> y.length }
      my_array << shortest 
      sentence_array.delete(shortest)
    end
  end
  return my_array
end