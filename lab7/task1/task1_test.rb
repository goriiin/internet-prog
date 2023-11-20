# frozen_string_literal: true

require 'minitest/autorun'
require_relative 'file'

class FileeTest < Minitest::Test
  def setup
    @filee = MyFile.new
  end

  def test_work_should_create_file_with_uppercased_content
    input = "Hello, world!"
    expected_output = "HELLO, WORLD!"

    @filee.work(input)

    output = File.open(@filee.work_path, 'r').read
    assert_equal(expected_output, output)
  end

  def test_work_should_ignore_non_alpha_characters
    input = "Hello, 1234!"
    expected_output = "HELLO, !"

    @filee.work(input)

    output = File.open(@filee.work_path, 'r').read
    assert_equal expected_output, output
  end

  def test_work_should_ignore_lowercased_letters
    input = "Hello"
    expected_output = "HELLO"

    @filee.work(input)

    output = File.open(@filee.work_path, 'r').read
    assert_equal expected_output, output
  end
end
