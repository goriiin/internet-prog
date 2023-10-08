# frozen_string_literal: true

# task3
class MyFunc3
  attr_accessor :words, :step

  def initialize(step = 0, words = '')
    @words = words
    @step = step
  end

  def add(word)
    @words += " #{word}"
  end

  def clear
    @words = ''
  end

  def decrypt
    decrypt_words = []

    @words.split.map do |word|
      decrypted_word = word.to_s.chars.map do |char|
        next char unless alpha?(char)

        ascii_offset = decrypt_char(char)

        ascii_offset.chr
      end.join('')

      decrypt_words << decrypted_word
    end
    decrypt_words.join ' '
  end


  private

  def decrypt_char(char)
    alphabet_length = ('Z'.ord - 'A'.ord) + 1
    alphabet_low = ('a'..'z').to_a
    alphabet_up = ('A'..'Z').to_a
    if char_upper?(char)
      index = (alphabet_up.index(char) + @step) % alphabet_length
      ascii_offset = alphabet_up[index]
    else
      index = (alphabet_low.index(char) + @step) % 26
      ascii_offset = alphabet_low[index]
    end

    ascii_offset
  end

  def alpha?(char)
    char.match?(/[[:alpha:]]/)
  end

  def char_upper?(char)
    char.match?(/[A-Z]/)
  end
end
