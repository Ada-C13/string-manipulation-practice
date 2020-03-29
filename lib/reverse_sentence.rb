# A method to reverse the words in a sentence, in place.
# Time complexity: O(n^2), because there are two nested loops that are dependent
# on size of the same input.
# Space complexity: O(1), because no data structures are created. I only reference
# elements in the string by index.
def reverse_sentence(sentence)
  return nil if sentence == nil

  i = 0
  j = sentence.length - 1
  while i < j
    temp = sentence[i]
    sentence[i] = sentence[j]
    sentence[j] = temp
    
    i += 1
    j -= 1
  end

  start = 0
  term  = 0
  while term < sentence.length
    if sentence[start] != " "
      until sentence[term] == " " || term == sentence.length
        term += 1
      end
      
      flip = sentence[start...term]
      k = 0
      m = flip.length - 1
      while k < m
        temp = flip[k]
        flip[k] = flip[m]
        flip[m] = temp
        
        k += 1
        m -= 1
      end

      sentence.gsub!(sentence[start...term], flip)
    else
      term += 1
    end
    start = term
  end

  return sentence
end