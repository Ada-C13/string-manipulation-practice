# A method to reverse the words in a sentence in place preserving trailing/ leading white spaces.
# Time complexity: O(n), where n represents the number of characters in the input string
# Space complexity: O(1)

def reverse_chars(my_sentence, left, right)
  while left < right
    my_sentence[left], my_sentence[right] = my_sentence[right], my_sentence[left]

    left += 1
    right -= 1
  end
end

def reverse_sentence(my_sentence)
  return my_sentence if my_sentence.nil? || my_sentence.length == 0 || my_sentence == ""

  # reverse all characters
  reverse_chars(my_sentence, 0, my_sentence.length - 1)

  # reverse characters in words once more to read forwards
  current_word_start = 0
  (0..my_sentence.length).each do |i|
    next unless i == my_sentence.length || my_sentence[i] == " "

    reverse_chars(my_sentence, current_word_start, i - 1)

    # shift one space over to start next word
    current_word_start = i + 1
  end

  return my_sentence
end