class ArmstrongNumbersController < ApplicationController
  def index
  end

  def calculate
    n = params[:n].to_i
    armstrong_numbers = []

    (10**(n-1)..(10**n)-1).each do |number|
      sum = 0
      temp_number = number
      while temp_number > 0
        digit = temp_number % 10
        sum += digit**n
        temp_number /= 10
      end
      armstrong_numbers << number if sum == number
    end

    @armstrong_numbers = armstrong_numbers
    @count = armstrong_numbers.count

    respond_to do |format|
      format.html { render partial: "results" } # Обновленный код
      format.js   # Добавленный код
    end
  end
end
