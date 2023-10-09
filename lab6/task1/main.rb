# frozen_string_literal: true

require_relative 'my_func1'

EPS1 = 10**-3
EPS2 = -0.001

#f1 = MyFunc1.new(EPS1)
f2 = MyFunc1.new(EPS2)

#puts f1.calc
p f2.calc

f2.eps = 0.01

p f2.eps