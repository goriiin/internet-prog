# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'my_func2'

class MyFunc2Test < Minitest::Test
  def setup
    @my_func = MyFunc2.new(0.000001)
  end

  def test_each_method_returns_enumerator_when_block_not_given
    assert_instance_of Enumerator, @my_func.each
  end

  def test_each_method_returns_correct_result
    expected_result = 0.992
    actual_result = @my_func.each.first

    puts actual_result

    assert_in_delta expected_result, actual_result, 0.001
  end

  def test_each_method_returns_nil_when_eps_is_zero
    my_func = MyFunc2.new(0)

    assert_nil my_func.each
  end

  def assert_in_delta_array(expected_results, actual_results, i2)
    # code here
  end

  def test_each_method_yields_correct_results
    expected_results = [
      1.0,
      0.5,
      0.3611111111111111,
      0.2833333333333333,
      0.23214285714285715,
      0.19642857142857142,
      0.16904761904761905,
      0.14722222222222223,
      0.12967171717171714,
      0.11574074074074073,
      0.10442084942084943
    ]

    actual_results = []
    @my_func.each { |result| actual_results << result }

    assert_in_delta_array expected_results, actual_results, 0.000001
  end
end