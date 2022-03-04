digit = 2 ** 1000
digit = digit.to_s
sum = 0
0.upto(digit.size-1) do
  |i| sum += digit[i].to_i
end
p sum
