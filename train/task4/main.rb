# frozen_string_literal: true


def char_lower?(char)
  char.match?(/[a-z]/)
end

def char_upper?(char)
  char.match?(/[A-Z]/)
end

def to_snake(str = '')
  str.chars.map do |char|
    if char_lower?(char)
      char
    elsif char_upper?(char)
      "_#{char.downcase}"
    end
  end.join('')
end

str = gets.chomp

puts to_snake(str)
