answer = 0
1.upto(9999) do |i|
  d = 0
  num = i
  1.upto(i - 1) do |j|

    if (i % j).zero?
      d += j
    end
  end

  d1 = 0
  1.upto(d - 1) do |i|
    if (d % i).zero?
      d1 += i
    end
  end

  if d1 == num && d1 != d
    sum = d + d1
    answer += sum
  end
end

p answer/2
