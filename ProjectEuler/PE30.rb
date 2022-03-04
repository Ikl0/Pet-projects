array_of_digits = Array.new()
all_sum = 0
2.upto(354294) do |i|
  num = i
  sum = 0

  array_of_digits = i.to_s.split('').map(&:to_i)

  0.upto(array_of_digits.size-1) do |i|
    sum += array_of_digits[i]**5
  end

  if sum == num
    all_sum += sum
  end

end
p all_sum