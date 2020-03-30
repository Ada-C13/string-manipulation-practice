# A method to reverse the words in a sentence, in place.
# Time complexity: 0(n)
# Space complexity: 0(n)
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return []
  end
  
  array = my_sentence.split(/ /, -1)

  reverse = []
  i = array.length
  while i != 0 
    reverse << array[i - 1]
    i -= 1
  end
  return reverse.join(' ')
end
