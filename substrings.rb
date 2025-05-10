def substrings(string, dictionary)
  dictionary.reduce({}) do |acc, word|
    occurrences = string.downcase.scan(word.downcase).count
    if occurances > 0
      acc[word] = occurrences
    end
    acc
  end
end
