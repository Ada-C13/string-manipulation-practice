# Time complexity: O(n)
# Space complexity: O(n)

def reverse_sentence(my_sentence)
  if !my_sentence 
    return 
  end 

  words = my_sentence.split
  reverse_sentence = ""

  i = my_sentence.length - 1 

  while i >= 0 && my_sentence[i] == " "
    i -= 1
    reverse_sentence += " " 
  end 

  words.reverse_each do | word |
    reverse_sentence += word 
    i -= word.length

    while i >= 0 && my_sentence[i] == " "
      i -= 1
      reverse_sentence += " " 
    end 
  end 
    for e in 0...reverse_sentence.length do 
    my_sentence[e] = reverse_sentence[e]
  end 
end 