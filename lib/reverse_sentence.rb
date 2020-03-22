# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2) - not so sure
# Space complexity: O(1) - since I tried to do this in place and didn't create extra array?
def reverse_sentence(my_sentence)
  return nil if my_sentence == nil

  i = 0
  j = my_sentence.length - 1 

  while i < j
  temp = my_sentence[i]
  my_sentence[i] = my_sentence[j]
  my_sentence[j] = temp

  i += 1
  j -= 1
  end

  
  first_index = 0
  ending_index = 0
  word = ""

  #reverse the words back itself
  while ending_index <= my_sentence.length
    if my_sentence[ending_index] != " " 
      if my_sentence[ending_index].class == NilClass
        last_index = ending_index - 1 
        word = my_sentence[first_index..last_index]
       

        small_index = 0
        large_index = word.length - 1
        while small_index < large_index
          temp = word[small_index]
          word[small_index] = word[large_index]
          word[large_index] = temp
          small_index += 1
          large_index -= 1
        end

        my_sentence = my_sentence.sub! my_sentence[first_index..ending_index], word

        first_index = ending_index + 1
        ending_index += 1 

      else
      ending_index += 1
      end
    
    elsif my_sentence[ending_index] == " "  
      
      word = my_sentence[first_index..ending_index]
      
      small_index = 0
      large_index = word.length - 2
      while small_index < large_index
        temp = word[small_index]
        word[small_index] = word[large_index]
        word[large_index] = temp
        small_index += 1
        large_index -= 1
      end
     
      my_sentence = my_sentence.sub! my_sentence[first_index..ending_index], word

      first_index = ending_index + 1
      ending_index += 1 

    end
    
  end

  return my_sentence
end
