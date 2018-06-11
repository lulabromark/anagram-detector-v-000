require 'pry'

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    matches = []
    possible_matches = array.collect { |word| word.split("")}
    possible_matches.each_with_index do |match, index|
      # binding.pry
      if match[index].sort == word.sort
        matches << match[index]
      end
    end
    matches
  end
end
