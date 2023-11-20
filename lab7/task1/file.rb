# frozen_string_literal: true

# MyClass
class MyFile
  attr_accessor :work_path, :work_path

  def initialize
    @main_path = '/home/dmitry/Desktop/internet-prog/lab7/task1/input'
    @work_path = '/home/dmitry/Desktop/internet-prog/lab7/task1/output'

    file = File.open(@work_path, 'w')
    file.close
  end

  def work(inp)
    input_in_file inp
    input = File.open(@main_path, 'r')

    content = input.read
    puts content

    output = File.open(@work_path, 'w+')

    content = content.upcase

    puts content
    output << content
  end

  private
  def alpha?(char)
    char.match?(/[[:alpha:]]/)
  end

  def char_upper?(char)
    char.match?(/[A-Z]/)
  end

  def input_in_file(input)
    file = File.new(@main_path, 'w+')

    file << input
    file.close
  end
end
