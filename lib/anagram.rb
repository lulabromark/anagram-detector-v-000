require 'pry'

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    matches = []
    possible_matches = array.collect { |word| word.split("")}
    possible_matches.each_with_index do |match|
      binding.pry
      if match.sort == word.sort
        matches << match
      end
    end
    matches
  end
end
