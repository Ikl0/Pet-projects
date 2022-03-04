require 'prime'

module Divisors
  def divisor_count
    sum = 1
    prime_division.each do |x|
      sum *= (x[1] + 1)
    end
    sum
  end
end

class Integer
  include Divisors
end
def triangle(num)
  return 3 if num == 1
  ((num + 1) * num) / 2
end

def highest_divisible_triangular_number(stop)
  i = 1
  i += 1 while triangle(i).divsor_count < stop
  triangle(i)
end

puts highest_divisible_triangular_number(500) if __FILE__ == $PROGRAM_NAME

