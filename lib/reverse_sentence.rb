# A method to reverse the words in a sentence, in place.
# Time complexity: o(n)
# Space complexity: o(1)
def reverse_sentence(my_sentence) 
  
  if my_sentence == nil
    my_sentence == nil 
  else
      original_sentence = my_sentence
      reversed_sentence = ""
      pattern = / +/
      word = ""
      index = my_sentence.length - 1
      i = my_sentence.length 

      while index >= 0 
          if !my_sentence[index].match?(pattern)  
            word.concat(my_sentence[index])
          else 
            reversed_sentence.concat(reverse_string(word))
            reversed_sentence.concat(" ")
            word = ""
          end
        index-=1 
      end 
        reversed_sentence.concat(reverse_string(word))
        my_sentence.replace(reversed_sentence)
  end 
end


def reverse_string(word)
  array = word.split("")
  (array.length/2).times do |i|
    temp = array[i]
    array[i] = array[array.length - 1 - i ] 
    array[array.length - 1 - i ] = temp
  end 
  return array.join()
end 


