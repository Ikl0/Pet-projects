all_array = Array.new(28_123)

0.upto(28_122) do |i|
  all_array[i] = i + 1
end

obil_array = Array.new(28_123)
index = 0

2.upto(28_122) do |i|

  num = all_array[i]
  sum = 0

  1.upto(num - 1) do |j|
    if (num % j).zero?
      sum += j
    end

    if sum > num
      obil_array[index] = num
      index += 1
      break
    end

  end

end
obil_array.compact!
p obil_array.size

0.upto(obil_array.size-1) do |j|
  j.upto(obil_array.size-1) do |x|
    if((obil_array[j] + obil_array[x])<=28_123)
      all_array.delete(obil_array[j] + obil_array[x])
    end
  end
end
sum = 0
all_array.each { |i| sum +=i }
p sum
