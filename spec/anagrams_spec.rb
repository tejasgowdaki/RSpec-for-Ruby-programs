require "anagrams"

describe Anagrams do
  it "expect anagram to match" do
    ana_array = Anagrams.new
    ana_result = ana_array.anagram('abba', ['abba', 'abcd', 'bbaa', 'dada'])
    expect(ana_result).to match ["abba", "bbaa"]
  end

  it "expect anagram nil" do
    ana_array = Anagrams.new
    ana_result = ana_array.anagram('abbac', ['abba', 'abcd', 'bbaa', 'dada'])
    expect(ana_result).to match []
  end
end
