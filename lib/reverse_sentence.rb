require "pry"

# # A method to reverse the words in a sentence, in place.
# # Time complexity: O{n} - linear go thru once intial reverse and revist and don't do at the time
# # Space complexity: O(1)

# ## Wave 2 - Reverse Sentence

# In this assignment, you'll design and implement one of the well-known string manipulation methods.
# Remember that a string is an array of characters. Algorithms that worked on restricted arrays will work on strings as well.

# ## Optional Exercise

# * Design and implement a method to reverse the words in a sentence *in place*. The string of words to be reversed in passed in as the input parameter to the method.
#   * Your algorithm should strive to optimize the space complexity as much as possible.
# * For example, if the method is called with input parameter of "Yoda&nbsp;&nbsp;&nbsp;is&nbsp;&nbsp;&nbsp;&nbsp;awesome", then the method should update the input string object to have the value "awesome&nbsp;&nbsp;&nbsp;&nbsp;is&nbsp;&nbsp;&nbsp;Yoda".
#   * Note that the count of white spaces between words is preserved.
# * Share and explain the time and space complexities for your solution in the comments above the method.
#   * If the complexity is shared in terms of *n*, your explanation must explain what *n* stands for.

# **Notes:**
#     * Do not use Ruby provided functionality for `.reverse` and `.reverse!`.
#     * You may use `.length` method available in the String class.
string = "My name is Shonda"
# temp = M

def reverse_sentence(string)
  # raise NotImplementedError
  return nil if !string
  left = 0
  right = string.length - 1
  reverse_string(string, left, right)
  # find the end of word
  # reverse string with start and end
  # reset start value
  # end 1 after start in a loop
  left = 0
  right = left
  while left < string.length
    until string[right + 1] == nil || string[right + 1] == " "
      right += 1
    end
    reverse_string(string, left, right)
    left = right + 1
    until string[left] != " "
      left += 1
      right = left
    end
  end
  return string
end

def reverse_string(string, left, right)
  # raise NotImplementedError
  while left < right
    temp = string[left]
    string[left] = string[right]
    string[right] = temp
    left += 1
    right -= 1
  end
end

#   reverse = ""
#   my_sentence = my_sentence.split(" ")
# while my_sentence.length > 0
#  reverse = reverse + my_sentence.pop
#  reverse
# end
