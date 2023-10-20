# frozen_string_literal: true


def find(arr = [])
  arr
end

def transform(arr)
  sum = 0
  arr.map { |num| sum += num }
end

def print(arr)
  arr.each { |item| print "#{item} " }
end

size = gets.to_i

arr = size.times.map { gets.to_i }

p transform(arr)
p find arr



# arrays = Array.new(10) do
#   length = rand(1..8)
#   p Array.new(length) { rand(-10..10) }.sum
# end



