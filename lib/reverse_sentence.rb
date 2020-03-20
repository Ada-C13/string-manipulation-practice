# A method to reverse the words in a sentence, in place.
# Time complexity: O(n) where n is the length of the string.
#                                 (more line O(3n)
# Space complexity: O(1) - in place

def reverse_sentence(my_sentence)
  return nil if my_sentence.nil? || my_sentence.length == 0

  # reversing the whole string
  i = 0
  while i < my_sentence.length / 2
    temp = my_sentence[i]
    my_sentence[i] = my_sentence[my_sentence.length - 1 - i]
    my_sentence[my_sentence.length - 1 - i] = temp
    i += 1
  end

  # two pointers technique to devide string and reverse individual words
  i = 0
  j = 0
  while j < my_sentence.length + 1
    if my_sentence[j] == " " || my_sentence[j] == nil
     
      n = ((j - i) / 2)
      n.times do |n|
        temp = my_sentence[n + i]
        my_sentence[n + i] = my_sentence[j - 1 - n]
        my_sentence[j - 1 - n] = temp
      end

      i = j + 1
    end
    j += 1
  end
  return my_sentence
end

########################################
### My second attempt ### (not in place)
########################################

# def reverse_sentence(my_sentence)
#   i = 0
#   array = []
  
#   while i < my_sentence.length
#     word = []
#     j = i

#     if my_sentence[i] == " "
#       array << my_sentence[i]
#       i += 1
#     else 
#       while my_sentence[j] != " " && my_sentence[j] != nil
#         word << my_sentence[j]
#         j += 1
#       end
#       array << word.join
#       i = j 
#       # pp array
#     end
#   end

#   n = 0
#   while n < array.length / 2
#     temp = array[n]
#     array[n] = array[array.length - 1 - n]
#     array[array.length - 1 - n] = temp
#     n += 1
#   end

#   new_string = array.join

#   m = 0
#   while m < my_sentence.length
#     my_sentence[m] = new_string[m]
#     m += 1
#   end

#   return my_sentence
# end


#######################################
### My first attempt ### (not in place)
#######################################

# def reverse_sentence(my_sentence)
#   array = my_sentence.split(/ /)
#   i = 0
#   while i < array.length / 2
#     temp = array[i]
#     array[i] = array[array.length - 1 - i]
#     array[array.length - 1 - i] = temp
#     i += 1
#   end
#   return array.join(" ")
# end