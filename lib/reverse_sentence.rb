# helper method
# Time complexity: O(n)
# Space complexity: O(n)
def special_split(string)
  chars = string.split("")
  space_chunk = "" # space chars only 
  word_chunk = "" # alphanumeric chars only 
  chunks = [] # sorry I couldn't come up with a better name lol
  i = 0 

  # divide string into array of space and word chunks
  while i < chars.length
    if chars[i] == " "
      while chars[i] == " " && chars[i] != nil
        space_chunk.concat(chars[i])
        i += 1 
      end 
      chunks << space_chunk
    elsif chars[i] != " "
      while chars[i] != " " && chars[i] != nil
        word_chunk.concat(chars[i])
        i += 1
      end 
      chunks << word_chunk
    end 

    # clear variables before next iteration
    space_chunk = ""
    word_chunk = "" 
  end

  return chunks
end 

# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)
def reverse_sentence(my_sentence)
  # handle edge cases 
  if my_sentence == ""
    return ""
  elsif my_sentence == nil
    return nil
  end 

  # split sentence into an array of string parts
  my_sentence = special_split(my_sentence)

  # perform reverse algorithim 
  i = 0
  j = my_sentence.length - 1

  while i < j
    my_sentence[i], my_sentence[j] = my_sentence[j], my_sentence[i] # swap values using ruby syntax
    i += 1
    j -= 1
  end 

  # convert back to string
  return my_sentence.join
end