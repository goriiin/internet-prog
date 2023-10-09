# frozen_string_literal: true

require_relative 'my_func3'


lambda = ->(x) { Math.sin(x) / x }

f1 = MyFunc3.new(0.1, 1, 10000)

puts f1.calc_lambda lambda

f2 = MyFunc3.new(1, 2, 10000)

puts f2.calc_bloc{|x| Math.tan(x+1) / (x+1)}