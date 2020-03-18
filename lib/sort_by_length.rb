# A method which will return an array of the words in the string
#  sorted by the length of the word.
# Time complexity: ?
# Space complexity: ?

def sort_by_length(my_sentence)
  # verify input. if only one word, return word
  if my_sentence.length == 1
    return my_sentence
  elsif
    # split input sentence into array
    my_sentence_array = my_sentence.split
    # save length of array to varialbe
    my_sentence_array_length = my_sentence_array.length
    puts "this is the length"
    puts my_sentence_array_length
    # start loop
      loop do  
        # set swapped to false
        swapped = false
        # create times loop and go over each index in array until (length - 1)
        (my_sentence_array_length - 1).times do |index|
          puts "inside while loop"
          index = 0
          # check if index[0].length is greater than index[1].length
          if my_sentence_array[index].length > my_sentence_array[index + 1].length
            puts "inside if statement"
            # if condition above is true...swap those two indexes with each other - this is the swapping
              my_sentence_array[index], my_sentence_array[index + 1] = my_sentence_array[index + 1], my_sentence_array[index]
              # change swapped value to true so that the loop continues
              swapped = true
              puts "this should be true"
              puts swapped
          end
        end
        # if no swaps, then input is in order and break out of loop
        break if not swapped 
      end
      # return expected output
      return my_sentence_array
  end
end





p sort_by_length("This is a dog")
# expected output => ["a", "is", "dog", "this"]