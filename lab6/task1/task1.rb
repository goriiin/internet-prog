# frozen_string_literal: true

class Func
  def calc( x )
    if x**3 == 5
      puts "ERROR"
    else
      yield x
    end
  end
end


calc do

end