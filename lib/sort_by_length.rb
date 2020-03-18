# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: O(n^2)?
# Space complexity: 0(1)?
def sort_by_length(my_sentence)
  sentence_array = my_sentence.split(" ")
  
  x = 0
  while x < sentence_array.length - 1 do 
    y = 0
    while y < (sentence_array.length - 1) do
      if sentence_array[y].length > sentence_array[y+1].length
        holder = sentence_array[y]
        sentence_array[y] = sentence_array[y+1]
        sentence_array[y+1] = holder
      end
      y += 1
    end
    x += 1
  end
  return sentence_array
end
