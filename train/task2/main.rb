# frozen_string_literal: true

require 'set'


# Сортировка по убыванию
# [-str.length, str]
# -str.length - показывает, что по убыванию длинны
# str - а затем по алфавиту
def sort_strings(arr)
  arr.to_a.sort_by { |str| [-str.length, str] }
end

# ---- тест
#=begin
arr = ['я', 'не', 'люблю', 'Бауманку', ', но’', 'я',
       'люблю', 'семинары по ЯИП']
#=end

#----- Раскомментинь для пользовательского ввода -----
=begin
size = gets.to_i
arr = size.times.map { gets.chomp }
=end


def answer(arr = [])
  my_set = Set.new(arr) # set - множество уникальных элементов

  sort_strings my_set
end

