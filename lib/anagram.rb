class Anagram

  attr_accessor :word

  def initialize(word)
    @word = word
  end

  def match(anagram_sentence)
    anagram_sentence.select do |element|
      element.split("").sort == @word.split("").sort
    end
  end
end