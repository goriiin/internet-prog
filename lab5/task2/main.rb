# frozen_string_literal: true

require_relative 'my_func2'

print 'Введите количество дней:'

num = gets.to_i

my_func = MyFunc2.new
my_func.create_table(num)
my_func.out_t

