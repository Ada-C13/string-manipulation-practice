# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(n)
def sort_by_length(my_sentence)
  array_of_words = my_sentence.split
  sorted_array = []
  array_of_words.each_with_index do |word, index_on_normal_array|
    if index_on_normal_array == 0
      sorted_array.push(array_of_words[0])
    else
      sorted_array_clone = sorted_array.clone
      sorted_array_clone.each_with_index do |word_in_sorted_array,index_in_sorted_array|    
        if word.length < word_in_sorted_array.length
          sorted_array.insert(index_in_sorted_array,word)
        elsif word.length == word_in_sorted_array.length && word.length < word_in_sorted_array.length
          sorted_array.insert(sorted_array_clone.length,word) 
        elsif word.length >= word_in_sorted_array.length && index_in_sorted_array == (sorted_array_clone.length - 1)
          sorted_array.insert(sorted_array_clone.length,word)      
        end

      end

    end

  end
  return sorted_array
end
