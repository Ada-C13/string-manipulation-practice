# A method to reverse the words in a sentence, in place.
# Time complexity : O(nˆ3) 3 nested loops, cubic
# Space complexity: O(1) in-place
# In-place algorithm is an algorithm which transforms input using no auxiliary data structure
# A small amount of extra storage space is allowed for auxiliary variables
# The input is usually overwritten by the output as the algorithm executes
# In-place algorithm updates input sequence only through replacement or swapping of elements
# N (or n) is the number of characters in the input String
# Input: "Yoda is cool and great ", Output: "great and cool is Yoda"

def reverse_sentence(str)

  # Return if string is empty
  return nil unless str.is_a?(String)
  return "" if str == ""

  # Set left_end and right_end to the borders of the sentences
  # This will make the loop work for the starting state
  left_end  = -1
  right_end = str.length

  # Main loop to get one word on the left and one word on the right, then swap them
  # Repeats until left_end and right_end meet in the middle 
  while left_end <= right_end do

    # Find the start and the end of the word on the left
    # The left word begins one character after where we finished before (left_start)
    # The left word ends on the first space after left_start (find next space after left_start)
    left_start = left_end + 1
    left_end   = left_start
    while str[left_end] != " " && left_end < str.length do
      left_end += 1
    end

    # Find the start and the end of the word on the right
    # The right word ends one character before the begining of the previous word (right_start)
    # The right word starts on the first space before the right_start (find next space before right_start)
    right_start = right_end - 1
    right_end   = right_start
    while str[right_end] != " " && right_end >= 0 do
      right_end -= 1
    end

    # If the two met in the middle, you are done
    break unless left_end <= right_end

    # Calculate the lengths of the words and find the smallest of the two
    # This will help with the operations to come
    left_length  = left_end - left_start
    right_length = right_start - right_end
    min_length   = left_length
    min_length   = right_length if right_length < left_length

    # Swap the beginning portion of the two words, up to the minimum length
    # If the two words are the same length, you are done with this pair of words
    (0..min_length-1).each do |index|
      temp = str[left_start + index]
      str[left_start + index]    = str[right_end + index + 1]
      str[right_end + index + 1] = temp
    end

    # If the two words are not the same length, you need to shift left or right
    if right_length > left_length
      # If the right word is longer, we will shift right
      # First, find how many characters we need to shift
      shift_length = right_length - left_length
      # Loop that many times, shifting one character to the right  
      (0..shift_length - 1).each do
        # Save the character on the right that we will shift into
        temp  = str[right_end + left_length + 1]
        # Move to the right. Shifts all characters from the end of the right word to the end of the left word
        index = right_end + left_length
        while index >= left_end do
          str[index + 1] = str[index]
          index -= 1
        end # while index >= left_end
        # Now, put the saved character in the space we opened on the left
        str[left_end] = temp
        # Adjust left end and right end to reflect the shift that was done
        left_end  += 1
        right_end += 1
      end # (0..shift_length - 1).each

    else
      # If the left word is longer, we will shift left
      # First, find how many characters we need to shift
      shift_length = left_length - right_length
      # Loop that many times, shifting one character to the left  
      (1..shift_length).each do
        # Save the character on the left that we will shift into
        temp  = str[left_start + right_length]
        # Move to the left. Shifts all characters from the end of the left word to the end of the right word
        index = left_start + right_length
        while index < right_start do
          str[index] = str[index + 1]
          index += 1
        end # while index < right_start
        # Now, put the saved character in the space we opened on the right
        str[right_start] = temp
        # Adjust left end and right end to reflect the shift that was done
        left_end  -= 1
        right_end -= 1
      end # (1..shift_length).each

    end # if

  end # while left_end <= right_end

  return str

end # def reverse_sentence