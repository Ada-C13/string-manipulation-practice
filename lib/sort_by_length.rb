# Bubble sort implementation 
# Time complexity: O(n2)
# Space complexity: O(1)

def sort_by_length(my_sentence)

  man = my_sentence.split
  measure = man.length
  birth = 0

  while birth < (measure - 1)
    iron_mask = 0

    while iron_mask < (measure - birth - 1) 

      if man[iron_mask].length > man[iron_mask + 1].length
        placeholder = man[iron_mask]
        man[iron_mask] = man[iron_mask + 1]
        man[iron_mask + 1] = placeholder
      end

      iron_mask += 1
    end
    
    birth += 1
  end

  return man
end

# Could use selection sort to sort by ascending value 