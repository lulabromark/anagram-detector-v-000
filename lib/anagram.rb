require 'pry'

class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(array)
    matches = []
    split_word = word.split("")
    possible_matches = array.collect { |word| word.split("")}
    possible_matches.each_with_index do |match|
      if match.sort == split_word.sort
        matches << match.join()
      end
    end
    matches
  end
end
