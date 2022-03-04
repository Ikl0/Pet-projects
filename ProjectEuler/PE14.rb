max = 0
1.upto(999_999) do |i|
  digit = i
  counter = 1
  while i != 1
    if i.even?
      i /= 2
    else
      i = i * 3 + 1
    end
    counter += 1
  end

  if counter > max
    max = counter
    p max
    p digit
  end

end

