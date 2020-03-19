# A method to reverse the words in a sentence, in place.

# Time complexity: ? O(3n) == O(n) , using 3 while loops
# Space complexity: ? O(n)

def reverse_sentence(my_sentence)
  return nil if my_sentence.nil? 
  new_arr = []
  holder = []
  i = 0
  while i < my_sentence.length

    if my_sentence[i] == " " 
      new_arr << holder.join 
      new_arr << " "   
      holder = [] 
    else
      holder << my_sentence[i] 
    end
    i += 1
  end 

  new_arr << holder.join 

  # creating the reversed string from the above array
  k = new_arr.length - 1
  i = 0
  while k >= 0
    
    if i < k
      temp = new_arr[i] # temporarly save words in the first half of the array 
      new_arr[i] = new_arr[k] # swap each words in the array
      new_arr[k] = temp
      i += 1
    end
    k -= 1
  end
  
  i = 0
  new_sentence = new_arr.join

  while i < new_sentence.length
    my_sentence[i] = new_sentence[i] 
    i += 1
  end
  return my_sentence
end
