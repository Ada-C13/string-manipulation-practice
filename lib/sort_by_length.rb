# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: o(n)
# Space complexity: 0(n)
def sort_by_length(my_sentence)
  array = my_sentence.split(" ")

  (array.length-1).times do |i|  
    start_index = i 
    (array.length).times do |j|
        j= i+1
        if array[start_index].length > array[j].length
          start_index = j
          temp = array[start_index]
          array[start_index] = array[i]
          array[i] = temp
        end 
    end 
  end 
  return array
end
