require 'pry'

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    matches = []
    possible_matches = array.collect { |word| word.split("")}
    possible_matches.each do |i|
      if matches[i].sort == word.sort
        matches << match[i]
      end
    end
    matches
  end
end
