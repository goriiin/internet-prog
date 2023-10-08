# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'my_func3'

#test class
class MyFuncTest < Minitest::Test
  def setup
    @my_func = MyFunc3.new(3, 'Fqp ilzhba fkpfab MXPPTLOAP!')
  end

  def test_1
    func = MyFunc3.new(1)
    func.add('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ')
    assert_equal 'bcdefghijklmnopqrstuvwxyzaBCDEFGHIJKLMNOPQRSTUVWXYZA', func.decrypt
  end

  def test_decrypt_returns_decrypt_words_as_expected
    assert_equal 'Its locked inside PASSWORDS!', @my_func.decrypt
  end

  def test_decrypt_does_not_affect_non_alpha_characters
    @my_func.add('123')
    assert_equal 'Its locked inside PASSWORDS! 123', @my_func.decrypt
  end

  def test_decrypt_handles_lowercase_characters_correctly
    @my_func.words = 'da'
    assert_equal 'gd', @my_func.decrypt
  end

  def test_decrypt_handles_uppercase_characters_correctly
    @my_func.words = 'XW'
    assert_equal 'AZ', @my_func.decrypt
  end

  def test_decrypt_handles_step_greater_than_26
    puts @my_func.words
    @my_func.step = 30
    assert_equal 'Jut mpdlfe jotjef QBTTXPSET!', @my_func.decrypt
  end

  def test_decrypt_handles_step_less_than_0
    @my_func.step = -5
    assert_equal 'Alk dgucwv afkavw HSKKOGJVK!', @my_func.decrypt
  end

  def test_decrypt_handles_empty_input
    @my_func.words = ''
    assert_equal '', @my_func.decrypt
  end

  def test_decrypt_handles_input_with_multiple_words
    @my_func.words = 'EULJKW LV QRW ZRUNLQJ WR JHWW'
    assert_equal 'HXOMNZ OY TUZ CUXQOTM ZU MKZZ', @my_func.decrypt
  end

  def test_decrypt_handles_input_with_repeated_words
    @my_func.words = 'GG GH HW GG'
    @my_func.step = -3
    assert_equal 'DD DE ET DD', @my_func.decrypt
  end

  def test_decrypt_handles_non_alpha_characters_in_between_alpha_characters
    @my_func.words = 'Lwv?!ohduqlqj!SURMHFWV!'
    @my_func.step = -3
    assert_equal 'Its?!learning!PROJECTS!', @my_func.decrypt
  end
end
