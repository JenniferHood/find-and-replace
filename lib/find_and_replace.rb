class String
  define_method(:find_and_replace) do |search_word, replacement|
    #we split the string sentence into an array of words.
    words = self.split(' ')
    #this is to test if the string is one or two words.
    if words.length().eql?(1)
      word = words.at(0)
      if word.eql?(search_word)
        replacement
      else
        word
      end
    else
      first_word = words.at(0)
      second_word = words.at(1)
      if first_word.eql?(search_word)
        first_word = replacement
      end
      if second_word.eql?(search_word)
        second_word = replacement
      end
      first_word + ' ' + second_word
    end
  end
end
