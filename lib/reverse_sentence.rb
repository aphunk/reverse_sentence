# A method to reverse the words in a sentence, in place.
# Time complexity: O(n), where n is the length of the sentence
# Space complexity: O(1), as all transformations are done in place, no additional space is needed

def reverse_sentence(my_sentence)
  unless my_sentence == nil
    temp_sentence = string_reverse(my_sentence)
    reverse_words(temp_sentence)
  end
  return my_sentence
end

def reverse_words(my_words)
  first_char = 0
  last_char = 0
  i = 0
  unless my_words == nil
    length = my_words.length
    while i < length
      while my_words[i] == " "
        i += 1
      end
      first_char = i
      while i < length && my_words[i] != " "
        i += 1
      end
      last_char = i - 1
      while last_char > first_char
        temp = my_words[first_char]
        my_words[first_char] = my_words[last_char]
        my_words[last_char] = temp
        first_char += 1
        last_char -= 1
      end
    end
  end
  return my_words
end

def string_reverse(my_string)
  if my_string == nil
    return nil 
  else
    i = 0
    j = my_string.length - 1
    temp = ""
    while i < j
      temp = my_string[i]
      my_string[i] = my_string[j]
      my_string[j] = temp
      i += 1
      j -= 1
    end
  end
  return my_string
end