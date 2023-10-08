# frozen_string_literal: true

# fff
class Float
  EPS = 1e-5
  def equals?(x, tolerance = EPS)
    (self - x).abs < tolerance
  end
end

# MyFunc
class MyFunc1
  include Math
  def calc(num)
    (sin(num) / (num**3 - 125) + num**2 - 2 * exp(num))
  end
end
