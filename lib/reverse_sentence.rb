# A method to reverse the words in a sentence, in place.

# Time complexity: O(n) => Because it loops 1 time in 'reverse' method depending on the input size, and it loops 1 time in 'reverse_sentence' method. Since a constant drops, it becomes O(n)

# Space complexity: O(1) => Because it does not create any extra array.


def reverse!(string, i, j)  # "  I can do this!     " 
  while i < j 
    string[i], string[j] = string[j], string[i]

    # # same as above
    # temp = string[i]
    # string[i] = string[j] 
    # string[j] = temp
    
    i += 1 
    j -= 1
  end 

  return string  # "     !siht od nac I  "
end 


def reverse_sentence(my_sentence) 
  return nil if my_sentence.nil? 

  reverse!(my_sentence, 0, my_sentence.length - 1) # reverse char 

  first = 0  # index for char

  (0..my_sentence.length).each do |last|  # index for white space    "     !siht od nac I  "

    # skip if we are not at the end of the last word
    next unless my_sentence[last] == " " || last == my_sentence.length

    reverse!(my_sentence, first, last - 1)  # "!siht" => "this!"

    first = last + 1
  end 

  return my_sentence
end   