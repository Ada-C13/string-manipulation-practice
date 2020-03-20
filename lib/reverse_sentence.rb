# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(1)

def reverse_word(string, string_start, string_end)
  while string_start < string_end
    temp = string[string_start]
    string[string_start] = string[string_end]
    string[string_end] = temp
    string_start += 1
    string_end -= 1
  end
  return string
end

def reverse_everything(string)
  half_length = string.length / 2
  half_length.times {|i| string[i], string[-i-1] = string[-i-1], string[i] }
end

def reverse_sentence(my_sentence)
  return nil if my_sentence == nil
  #reverse everything
  reverse_everything(my_sentence)
  
  # select "words" to reverse
  word_start = 0
  word_end = 0
  temp = ""
  while word_end < my_sentence.length
    while my_sentence[word_end] != " " && word_end < my_sentence.length
      word_end += 1
    end

    # reverse word
    reverse_word(my_sentence, word_start, word_end - 1)

    word_start = word_end

    while my_sentence[word_end] == " " && word_end < my_sentence.length
      word_end += 1
      word_start += 1
    end
  end
  return my_sentence
end