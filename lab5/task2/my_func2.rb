# frozen_string_literal: true

# MyFunc2
class MyFunc
  def initialize
    @temp_per_days = []
    @num = 0
  end

  def create_table(num)
    @num = num
    @num.times do |i|
      n = gets.chomp.to_i
      @temp_per_days << n
    end
  end

  def out_t
    num = 1
    @temp_per_days.find_all do |elem|
      puts "#{num} - #{elem}" if elem <= -10
      num += 1
    end
  end
end


