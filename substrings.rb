def substrings(string, dictionary)
  dictionary.reduce({}) do |acc, word|
    occurances = string.scan(word).count
    if occurances > 0
      acc[word] = occurances
    end
    acc
  end
end
