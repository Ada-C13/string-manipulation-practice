# A method to reverse the words in a sentence, in place.
# Time complexity: o(n) one each loop
# Space complexity: O(n) made a reverse and a word holder
def reverse_sentence(my_sentence)
  if my_sentence == ""
    return ""
  elsif my_sentence == nil
    return nil
  end

  split = my_sentence.split("")
  reverse = ""

  word_holder = ""

  split.each do |char|
    if char == " "
      reverse = "#{word_holder}#{reverse}"
      reverse = "#{char}#{reverse}"
      word_holder = ""
    elsif char != " "
      word_holder = word_holder + char
    end
  end
  reverse = "#{word_holder}#{reverse}"
  return reverse
end
