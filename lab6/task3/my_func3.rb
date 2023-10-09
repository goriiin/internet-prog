# frozen_string_literal: true

class MyFunc3
  attr_accessor :num, :begin, :end
  def initialize(a, b, n)
    @begin = a
    @end = b
    @num = n
  end

  def calc_lambda(f)
    sum = 0
    x = @begin
    delta = (@end - @begin) / @num.to_f
    num.times do
      sum += delta * f.call(x)
      x += delta
    end
    
    sum
  end

  def calc_bloc(& f)
    sum = 0
    x = @begin
    delta = (@end - @begin) / @num.to_f
    num.times do
      sum += delta * f.call(x)
      x += delta
    end

    sum
  end
end

