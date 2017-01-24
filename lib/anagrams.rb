class Anagrams

  def anagram(primary_word,compare_array)
    primary_word = primary_word.split("").sort
    ana_words = []
    compare_array.each do |word|
      if primary_word == word.split("").sort
        ana_words.push(word)
      end
    end
    return ana_words
  end

end

=begin
anagram_array = Anagrams.new

puts "Anagram array - #{anagram_array.anagram('abba', ['abba', 'abcd', 'bbaa', 'dada'])}"
=end
