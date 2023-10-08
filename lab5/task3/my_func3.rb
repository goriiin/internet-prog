# frozen_string_literal: true

# task3
class MyFunc
  attr_accessor :words, :step, :letters

  def initialize(step = 0, words = [])
    @words = words
    @step = step
    @letters = ('A'..'z').to_a
  end

  def add(word)
    @words << word
  end

  def clear
    @words = []
  end

  def decrypt
    decrypt_words = []
    d_word = ''
    @words.each do |word|
      str = word.to_s
      str.each_char do |char|
        d_word += ('A'.ord + (char.ord - 'A'.ord + step) % @letters.length).chr if @letters.index(char)
      end
      decrypt_words << d_word
    end
    decrypt_words
  end
end
