
word_list = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
def substring(words, word_list)
  #downcase and strip punctuation
  words = words.downcase
  punc = ",.!?"
  words = words.tr(punc, " ")
  #turn into an array
  words = words.split(" ")

  #~~~~~~~~~~~~~
  return_hash = {}
  words.each do |word|
    word_list.each do |word_list_word|
      if word == word_list_word
        #find in return hash
        if return_hash.has_key?(word.to_sym) #found in return hash, increment it
          return_hash[word.to_sym] += 1
        else #not found in return hash, add it
          return_hash[word.to_sym] = 1
        end
      end
    end
  end
  return_hash
end

puts "Type in your word or words"
words = gets.chomp
p substring(words, word_list)
