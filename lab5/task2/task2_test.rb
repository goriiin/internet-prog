# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'my_func2'


# Testing class
class TestMyFunc < MiniTest::Test
  def setup
    @items =
    @module = MyFunc2.new
  end

  def test_name1
    @items.each do |x|
      assert(@module.calc(x).nil?)
    end
  end
end
