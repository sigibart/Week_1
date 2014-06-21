#Given a sentence, return true if the sentence is a palindrome.

def palindrome?(sentence)
sentence.downcase.gsub(" ", "") == sentence.downcase.gsub(" ", "").reverse
end

p palindrome?("Never odd or evens")