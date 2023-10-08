# frozen_string_literal: true

EPS1 = 10**(-3)
EPS2 = 10**(-4)

def func ( x )
  1.0/(x + ( x + 1 ))
end

sum = 0.0
# s = SUM_k=1_k=inf (1/(k * (k + 1)))
i = 1
loop do
  sum += func(i)
  if (func(i + 1) - func(i)).abs < EPS2
    break
  end

  i+=1
end

puts sum, i
