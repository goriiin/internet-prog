# frozen_string_literal: true

# Func
class MyFunc1
  include Math
  attr_accessor :eps

  def initialize(eps)
    @eps = eps
  end

  def calc
    if @eps <= 0
      nil
    else
      result = 0
      x = 1
      loop do
        result += func x
        break if (func(x) - func(x + 1)).abs < @eps

        x += 1
      end
      result
    end
  end

  private

  def func(x)
    1.0 / (x * (x + 1))
  end
end
