# frozen_string_literal: true

require_relative 'my_func1'

print 'enter num: '

x = gets.to_f

puts MyFunc1.new.calc(x)
