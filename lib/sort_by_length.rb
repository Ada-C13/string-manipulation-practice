require "pry"
# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: On^2
# Space complexity: On

#In this method you will take a string as a parameter.  The method will return an array of words in the string, sorted by length.  Solve the problem without using the ruby `.sort` method.  When words are tied for length, maintain the order they appeared in the original string.

#input = My name is Shonda
#output = My is name Shonda
#input is a string  output an array of strings
#swap

#    0     1   2  3
# "Passed fear I loved"

# "fear passed I loved"

# "fear I passed loved"

# "fear I loved passed"

# "fear Passed loved I"
# "loved fear I Passed"

def sort_by_length(my_sentence)
  # raise NotImplementedError, "Method not implemented"
  word_array = my_sentence.split(" ")
  i = 0
  while i < word_array.length
    j = i + 1
    while j < word_array.length
      if word_array[i].length > word_array[j].length
        temp = word_array[i]
        word_array[i] = word_array[j]
        word_array[j] = temp
        # else
        #   break
      end
      j += 1
    end
    i += 1
  end
  return word_array
end
