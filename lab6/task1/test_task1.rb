# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'my_func1'

# Тесты для класса MyFunc1
class MyFunc1Test < Minitest::Test
  def setup
    @func = MyFunc1.new(0.01)
  end

  def test_calc_returns_expected_result
    result = @func.calc
    assert_in_delta 0.83, result, 0.01
  end

  def test_calc_returns_nil_if_eps_is_not_positive
    @func.eps = -0.001
    result = @func.calc
    assert_nil result
  end

  def test_calc_stops_when_difference_between_iterations_is_less_than_eps
    @func.eps = 0.0001
    result = @func.calc
    assert_in_delta 0.965, result, 0.001
  end
end
