# frozen_string_literal: true

class MyFunc2
  include Enumerable

  def initialize(eps)
    @eps = eps
  end

  def each
    return nil if @eps <= 0
    return enum_for(:each) unless block_given?

    result = 0
    x = 1
    loop do
      result += func(x)
      break if (func(x) - func(x + 1)).abs < @eps

      x += 1
    end

    yield result
  end

  private

  def func(x)
    1.0 / (x * (x + 1))
  end
end
