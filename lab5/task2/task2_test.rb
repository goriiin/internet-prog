# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'my_func2'


class MyFunc2Test < Minitest::Test
  def setup
    @my_func = MyFunc2.new([5, 10, -15, -20, 0, -5, -10])
  end

  def test_add
    @my_func.add(-10)
    assert_equal [-15, -20, -10, -10], @my_func.out
  end

  def test_out
    assert_equal [-15, -20, -10], @my_func.out
  end
end
