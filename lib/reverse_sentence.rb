# A method to reverse the words in a sentence, in place.
# Time complexity: O(n)
# Space complexity: O(n)

def reverse(array, length)
  i = 0
  j = length - 1

  while i < j 
    temp = array[i]
    array[i] = array[j]
    array[j] = temp
    i += 1
    j -= 1
  end
  return array
end

def reverse_sentence(my_sentence)
  return if my_sentence == nil 
  original_sentence = my_sentence.clone 
  reversed_string = reverse(my_sentence, my_sentence.length)
  
  words = original_sentence.split(" ")
  reversed_words = reverse(words, words.length)
  new_sentence = ""

  reversed_words.each do |words|
    new_sentence << words
  end

  i = 0
  reversed_string.length.times do 
    if reversed_string[i] == " "
      new_sentence.insert(i," ")
    end
    i += 1
  end
  
  # diana helped me with this, I'm still not sure why it was necessary
  new_sentence.length.times do |i|
    my_sentence[i] = new_sentence[i]
  end

  return my_sentence

end