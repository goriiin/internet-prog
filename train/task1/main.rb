# frozen_string_literal: true

def find_max_subarray(arr)
  if arr.nil? || arr.empty?
    puts 'empty array'
    return
  end

  max_sum_start_index = 0
  max_sum_last_index = 0
  max_sum = arr[0]

  last_sum_start_index = 0
  last_sum = arr[0]

  (1...arr.length).each do |i|
    last_sum += arr[i]
    if last_sum < arr[i]
      last_sum = arr[i]
      last_sum_start_index = i
    end

    next unless max_sum < last_sum

    max_sum_start_index = last_sum_start_index
    max_sum_last_index = i
    max_sum = last_sum
  end

  puts "max_sum = #{max_sum}"
  (max_sum_start_index..max_sum_last_index).each do |i|
    print "#{arr[i]} "
  end
end

arr = [1, -2, 3, 4, -9, 6]
find_max_subarray(arr)
