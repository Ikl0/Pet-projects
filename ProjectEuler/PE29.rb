arnum = Array.new(10000)
index = 0
2.upto(100) do |i|
  2.upto(100) do |j|
    arnum[index] = i**j
    index += 1
  end
end
p arnum.uniq.compact.size