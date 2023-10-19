# frozen_string_literal: true

# MyFunc
class MyFunc1
  include Math
  def calc(num)
    if num == 5**-3
      puts 'ERROR'
      return nil
    end

    (sin(num) / (num**3 - 5) + num**2 - 2 * exp(num))
  end
end
