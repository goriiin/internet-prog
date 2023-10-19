# frozen_string_literal: true

class MySym
  attr_accessor :sym

  def initialize(sym)
    @sym = sym.to_s
    @sym = sym[0] if @sym.length >= 1
  end

  def print
    puts @sym
  end

  def to_uni
    @sym.bytes.to_a
  end
end
