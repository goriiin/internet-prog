# frozen_string_literal: true

# MyFunc2
class MyFunc2
  def initialize(temp_per_days = [])
    @temp_per_days = temp_per_days
  end

  def add(temp)
    @temp_per_days << temp
  end

  def out
    answer = []
    @temp_per_days.each { |temp| answer << temp if temp <= -10 }
    answer
  end
end


