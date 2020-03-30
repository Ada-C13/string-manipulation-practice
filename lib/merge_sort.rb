def split_into_halves(word_arr)
  # find midpoint of word_arr
  mid = (word_arr.length + 1) / 2

  # split word_arr into two sections
  left = word_arr.slice(0...mid)
  right = word_arr.slice(mid..-1)

  return left, right
end

def sort_halves(word_arr)
  # base case to exit out
  return word_arr if word_arr.length == 1 || word_arr.length == 0

  left, right = split_into_halves(word_arr)
  left = sort_halves(left)
  right = sort_halves(right)

  merge_sorted_halves(left, right)
end

def merge_sorted_halves(left, right)
  # check first index of both sides, return smallest in output array
  # and increment index in whichever side was smaller
  # end when you hit the last item of last array
  left_counter = 0
  right_counter = 0
  merged_array = []

  while left_counter < left.length || right_counter < right.length
    # if no val at left_counter, must be a right value(s)
    if !left[left_counter]
      merged_array << right[right_counter]
      right_counter += 1
    elsif !right[right_counter]
      merged_array << left[left_counter]
      left_counter += 1
    else
      # both sides have something in them
      if left[left_counter].length <= right[right_counter].length
        merged_array << left[left_counter]
        left_counter += 1
      else
        merged_array << right[right_counter]
        right_counter += 1
      end
    end
  end
  return merged_array

end

def sort_by_length(my_sentence)
  word_arr = my_sentence.split(" ")
  sort_halves(word_arr)
end