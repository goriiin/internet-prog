# frozen_string_literal: true

require_relative 'my_sym'
require_relative 'my_char'
require 'test/unit'

class MySymTest < Test::Unit::TestCase
  def test_initialize
    sym = MySym.new(:a)
    assert_equal("a", sym.sym)
  end

  def test_to_uni
    sym = MySym.new(:a)
    assert_equal([97], sym.to_uni)
  end
end

class MyCharTest < Test::Unit::TestCase
  def test_initialize
    char = MyChar.new(:a, "Arial")
    assert_equal("a", char.sym)
    assert_equal("Arial", char.font)
  end

  def test_to_uni_inherited
    char = MyChar.new(:a, "Arial")
    assert_equal([97], char.to_uni)
  end

  def test_father
    ch = MyChar.new('a', "Arail")
    sym = MySym.new("a")

    assert_equal(ch.class.superclass, sym.class)
  end
end
