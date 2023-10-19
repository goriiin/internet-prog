# frozen_string_literal: true

require_relative 'my_sym'

class MyChar < MySym
  attr_accessor :font, :sym

  def initialize(sym, font)
    super sym
    @font = font
  end

end
