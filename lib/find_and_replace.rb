class String
  define_method(:find_and_replace) do |search_word, replacement|
    if self.eql?(search_word)
      replacement
    else
      self
    end
  end
end
