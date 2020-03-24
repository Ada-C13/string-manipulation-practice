# # A method to reverse the words in a sentence, in place.
# # Time complexity: 0(n) A loop based off of n - n being the length
# # Space complexity: 0(1) because my_sentence is the input and return value - all other variables are temporary


def reverse_sentence(my_sentence)
  # validate input
  if my_sentence == nil
    return
  elsif my_sentence == "" 
    return
  elsif my_sentence.length == 0
    return
  end

    # split input - including whitespace - into array
    # rubular.com
    sentence_arr = my_sentence.split(/(\s+|\S+)/)
    # another array to push reversed elements into
    reversed_array = []
    start_index = 0
    last_index = sentence_arr.length - 1
    # begin looping from last index
      while last_index >= start_index
        # push last index into array
        reversed_array << sentence_arr[last_index]
        #decrement last index to loop "backwards" 
        last_index -= 1
      end
      # convert array back into sentence
      reversed_sentence = reversed_array.join("")
    # After hours of banging my head, a classmate gave me these two lines of code. 
    # The tests indicate the original input must me manipulated IN PLACE by saying my_sentence.must_equal (??)
    # So, the original input (my_sentence) needs to be cleared and then reversed_sentence gets stored in my_sentence. 
    # right?? And that's considered IN PLACE. Ugh! I would have never figured this out on my own! 
      my_sentence.clear
      my_sentence.concat(reversed_sentence)
    
end 