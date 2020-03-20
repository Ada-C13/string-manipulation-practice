# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  words = my_sentence.split(/\W+/)

  words.size.times do |first_index| 
    min_index = first_index

    (words.size-first_index).times do |subarray_index|
      if words[first_index+subarray_index].length < words[min_index].length 
        min_index = first_index + subarray_index
      end
    end
    
    unless min_index == first_index #don't swap the same index with itself
      holder = words[first_index]
      words[first_index] = words[min_index]
      words[min_index] = holder
    end
  end

  return words
end
