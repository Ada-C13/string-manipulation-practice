# A method to reverse the words in a sentence, in place.
# Time complexity: O(N)
# Space complexity: O(N)
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil 
  else 
  my_arr = my_sentence.split(/(\s+)(?=(?:[^"]*"[^"]*")*[^"]*$)/) #regex expression from https://stackoverflow.com/questions/8162444/ruby-regex-extracting-words
  p my_arr
  joined = []
  my_arr.each do |word|
    joined.prepend word
  end
  p joined
  string =  joined.join
  my_sentence.replace string
end
end
