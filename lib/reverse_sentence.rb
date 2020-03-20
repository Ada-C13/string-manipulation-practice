# A method to reverse the words in a sentence, in place.

# Time complexity: O(n^2) => Because it loops 1 time in 'reverse' method depending on the input size, and it has a nested loop in 'reverse_sentence' method. Since a constant drops, it becomes O(n^2)

# Space complexity: O(1) => Because it does not create any extra array.


def reverse(string)  # "  I can do this!     " 
  i = 0 
  j = string.length - 1

  while i < j 
    temp = string[i]
    string[i] = string[j]
    string[j] = temp 

    i += 1 
    j -= 1
  end

  return string  # "     !siht od nac I  "
end 



def reverse_sentence(my_sentence)
  return nil if my_sentence.nil?
  my_sentence = reverse(my_sentence) 
  
  first = 0
  last = 0 

  while last < my_sentence.length 
    if my_sentence[first] != " " 

      until my_sentence[last] == " " || last == my_sentence.length
        last += 1
      end 

      reverse_word = reverse(my_sentence[first..last - 1])  # => from "!siht" to "this!"

      my_sentence = my_sentence.gsub(my_sentence[first...last], reverse_word)  # => "     this! od nac I  "
    end 

    first = last
    last += 1 
  end 

  return my_sentence  # => "     this! do can I  "
end 