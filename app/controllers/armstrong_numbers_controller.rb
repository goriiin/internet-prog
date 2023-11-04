class ArmstrongNumbersController < ApplicationController
  def index
  end

  def calculate
    n = params[:n].to_i
    armstrong_numbers = []

    (10**(n-1)..(10**n)-1).each do |number|
      sum = 0
      number.to_s.each_char { |digit| sum += digit.to_i**n }
      armstrong_numbers << number if sum == number
    end

    @armstrong_numbers = armstrong_numbers
    @count = armstrong_numbers.count
  end
end
