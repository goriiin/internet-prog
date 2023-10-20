# frozen_string_literal: true

def filter_range(arr, starting, ending)
  arr.select { |item| item.between?(starting, ending) }
end

def calculate_arithmetic_mean(arr = [])
  sum = 0

  arr.each { |item| sum += item }
  sum.to_f / arr.length
end

def answer(arr, starting, ending)
  new_arr = filter_range arr, starting, ending
  p new_arr

  p calculate_arithmetic_mean(new_arr).round(2)
end

size = gets.to_i

arr = size.times.map { gets.to_i }

answer arr, 1, 5
