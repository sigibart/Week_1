
def find_frequency(sentence, word)

	sentence.downcase.split.count(word.downcase)

end

a = "abcd"
puts find_frequency(a,"a")