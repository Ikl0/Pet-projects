factorial = 100.downto(1).inject(:*).to_s
sum = 0
 0.upto(factorial.size-1) do |i|
   sum += factorial[i].to_i
 end
p sum
