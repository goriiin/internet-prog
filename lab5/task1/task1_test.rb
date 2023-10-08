# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'my_func1'

# Testing class
class TestMyFunc < MiniTest::Test
  def setup
    @items = Array.new(100) { rand(-100.0..99.9) }
    @module = MyFunc1.new
  end

  def test_func
    @items.each do |x|
      assert(@module.calc(x).finite?)
    end
  end
end
