class String
  define_method(:find_and_replace) do |search_word, replacement|
    #we split the string sentence into an array of words.
    words = self.split(' ')
    new_words = []
    words.each() do |word|
      if word.eql?(search_word)
        new_words.push(replacement)
      else
        new_words.push(word)
      end
    end
    new_words.join(' ')
  end
end
