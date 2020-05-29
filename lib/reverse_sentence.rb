# A method to reverse the words in a sentence, in place.
# Time complexity: ?
# Space complexity: ?
def reverse_sentence(my_sentence)
  if my_sentence == nil
    return nil
  end

  # reverse sentence
  
 


  # array = my_sentence.split(/ /, -1)
  # reverse = []
  # x = array.length
  # while x != 0
  #   reverse << array[x - 1]
  #   x -= 1
  # end

  # return reverse.join(" ")
end

def reverse(string, head, tail)

  while head < tail
    swap(string, head, tail)
    head += 1
    tail -= 1
  end
end

def swap(string, head, tail)
  string[head], string[tail] = string[tail], string[head]
end


# split it words, reset index after you find a word