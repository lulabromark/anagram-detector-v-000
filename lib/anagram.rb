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
      binding.pry
      if possible_matches[i].sort == word.sort
        matches << possible_matches[i]
      end
    end
    matches
  end
end
