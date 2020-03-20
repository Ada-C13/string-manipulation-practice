# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)
# Space complexity: O(1)
def sort_by_length(my_sentence)
  split_sentence = my_sentence.split(" ")  
      #adapted from Insertion Sort lecture
        i = 1
        while i < split_sentence.length
          to_insert = split_sentence[i]
          j = i
          while j > 0 && split_sentence[j-1].length > to_insert.length
            split_sentence[j] = split_sentence[j-1]
            j -= 1
          end
          split_sentence[j] = to_insert
          i += 1
        end
        p split_sentence
      end
