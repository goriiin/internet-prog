# frozen_string_literal: true

require_relative 'my_func3'

#
# print 'Введи количество слов: '
# num = gets.to_i
#
# words = []
#
# num.times do |_i|
#   words << gets.chomp
# end
#
# print 'Введи шаг: '
#
# step = gets.to_i
#
cipher = MyFunc3.new(1, 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')

cipher.add('EBIIL')
cipher.add('TLfdz.z//')


p cipher.decrypt
