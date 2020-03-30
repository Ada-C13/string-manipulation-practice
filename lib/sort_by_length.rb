# A method which will return an array of the words in the string
# sorted by the length of the word.

# <insertion sort, selection sort, bubble sort>
# Time complexity: O(n^2) => Because it is a nested loop and they loop through depending on the input size. 
# Space complexity: O(n) => Due to a "split" method, a new array was created.


# Since 3 sorting concepts are difficult for me, I decided to practice all of them.


# Practice 1 (using insertion sort) 
def sort_by_length(my_sentence)  
  words = my_sentence.split(" ")

  i = 1 

  while i < words.length  # outer loop ( 1 ~ words.length - 1)
    to_insert = words[i]
    j = i  

    # while j is greater than 0 and words[j - 1].length is greater than to_insert.length
    while j > 0 && words[j - 1].length > to_insert.length
      words[j] = words[j - 1] 

      j -= 1 # decrement j by 1
    end 

    words[j] = to_insert 
    i += 1 
  end 

  return words
end 



# Practice 2 (using selection sort)

# def sort_by_length(my_sentence) 
#   words = my_sentence.split(" ")

#   i = 0 
#   while i < words.length - 1   # outer loop (0 ~ length - 2)

#     min_idx = i  
#     j = i + 1 

#     while j < words.length   # inner loop (0 ~ length - 1)
#       if words[j].length < words[min_idx].length
#         min_idx = j 
#       end 

#       j += 1
#     end 

#     if min_idx != i # swap 
#       temp = words[min_idx]
#       words[min_idx] = words[i]
#       words[i] = temp
#     end 

#     i += 1
#   end 

#   return words
# end 



# # Practice 3 (using bubble sort) # In case of a sorted array, the best time complexity will be O(n)
# def sort_by_length(my_sentence)

#   words = my_sentence.split(" ")

#   i = 0 
#   swapped = true 

#   while i < words.length - 1  && swapped # outer loop
#     j = 0 
#     swapped = false

#     while j < words.length - 1 - i  # inner loop
      
#       if words[j].length > words[j + 1].length   # swap
#         temp = words[j]
#         words[j] = words[j + 1] 
#         words[j + 1] = temp 

#         swapped = true
#       end 

#       j += 1
#     end 

#     i += 1
#   end 

#   return words
# end