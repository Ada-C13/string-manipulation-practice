# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2) in the worst case scenario and O(n) in the best case. But since we always consider the worst case, it's O(n^2).
# Space complexity: O(1) No matter the sentence, one array gets made, that eventually gets converted back into a string.

def reverse_sentence(my_sentence)
  
  return nil if my_sentence == nil
    
  my_sentence = my_sentence.split(/(\s)/)
  last_index = my_sentence.length - 1
  x = 0
  until x == my_sentence.length/2
    if my_sentence.length.even? 
      holder = my_sentence[x]
      my_sentence[x] = my_sentence[last_index - x]
      my_sentence[last_index - x] = holder
      x += 1
    elsif my_sentence.length.odd? 
      middle_index = my_sentence.length / 2
      while x < middle_index
        holder2 = my_sentence[x]
        my_sentence[x] = my_sentence[last_index - x]
        my_sentence[last_index - x] = holder2
        x += 1
      end
    end
    
  end
  return my_sentence.join
end
