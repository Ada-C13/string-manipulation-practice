# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) because we're going through my_sentence twice but as separate processes
# Space complexity: O(n), no new structures created or maintained
def reverse_sentence(my_sentence)
  return my_sentence if my_sentence == nil

  reverse_range(my_sentence, 0, my_sentence.length-1)

  left = 0
  right = 0

  while right < my_sentence.length
    until my_sentence[left] != " " || left+1 == my_sentence.length
      left += 1
      right +=1
    end
    until my_sentence[right+1] == " " || right+1 == my_sentence.length
      right+= 1
    end
    reverse_range(my_sentence,left,right)
    left = right+1
    right = left
  end
  
end

def reverse_range(my_sentence, left, right)
  ((right-left)/2+1).times do |x|
    hold_left = my_sentence[left+x]
    my_sentence[left+x] = my_sentence[right-x]
    my_sentence[right-x] = hold_left
  end
end

