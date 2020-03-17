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

  return nil unless str.is_a?(String)
  return "" if str == ""

  left_end  = -1
  right_end = str.length
  
  while left_end <= right_end do
    
    # Find next space after left_start
    left_start = left_end + 1
    left_end   = left_start
    while str[left_end] != " " && left_end < str.length do
      left_end += 1
    end

    # Find next space before right_start
    right_start = right_end - 1
    right_end   = right_start
    while str[right_end] != " " && right_end >= 0 do
      right_end -= 1
    end

    break unless left_end <= right_end

    # Calculate the lengths of everything 
    left_length  = left_end - left_start
    right_length = right_start - right_end
    min_length   = left_length
    min_length   = right_length if right_length < left_length

    # Swap the portion that is the same length
    (0..min_length-1).each do |index|
      temp = str[left_start + index]
      str[left_start + index] = str[right_end + index + 1]
      str[right_end + index + 1] = temp
    end

    if right_length > left_length
      # Shift right
      shift_length = right_length - left_length
      (0..shift_length - 1).each do
        temp  = str[right_end + left_length + 1]
        index = right_end + left_length
        while index >= left_end do
          str[index + 1] = str[index]
          index -= 1
        end # while index >= left_end
        str[left_end] = temp
        left_end  += 1
        right_end += 1
      end # (0..shift_length - 1).each

    else
      # Shift left
      shift_length = left_length - right_length
      (1..shift_length).each do
        temp  = str[left_start + right_length]
        index = left_start + right_length
        while index < right_start do
          str[index] = str[index + 1]
          index += 1
        end # while index < right_start 
        str[right_start] = temp
        left_end  -= 1
        right_end -= 1
      end # (1..shift_length).each

    end # if

  end # while left_end <= right_end

  return str

end # def reverse_sentence