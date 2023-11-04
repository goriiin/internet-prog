# frozen_string_literal: true

require_relative 'my_func2'

EPS1 = -10**-3

f = MyFunc2.new EPS1

f.each { |result| puts result }
