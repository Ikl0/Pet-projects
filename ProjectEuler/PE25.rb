fibre = Array.new(1_000_000, Integer)
fibre[0] = 1
fibre[1] = 1
i = 2
index = 1
while fibre[i - 1].to_s.size != 1000
  fibre[i] = fibre[i - 1].to_i + fibre[i - 2].to_i
  i += 1
  index += 1
end
p index + 1
