# frozen_string_literal: true

require 'set'

def compare_strings?(str1 = '', str2 = '')
  str1.chars.to_set == str2.chars.to_set
end

arr = %w[пила собака каре улыбака липа река]

new_arr = arr.reject { |word| arr.any? { |other| other != word && compare_strings?(word, other) } }

p new_arr
