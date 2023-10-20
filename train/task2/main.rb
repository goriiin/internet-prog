# frozen_string_literal: true

require 'set'

def sort_strings(arr)
  arr.sort_by { |str| [-str.length, str] }
end

=begin
arr = ['я', 'не', 'люблю', 'Бауманку', ', но’', 'я',
       'люблю', 'семинары по ЯИП']
=end

size = gets.to_i
arr = size.times.map { gets.chomp }

my_set = Set[]

arr.each { |item| my_set << item}


p sort_strings my_set
