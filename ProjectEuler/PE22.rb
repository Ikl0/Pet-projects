sum = 0
file = File.open('names.txt')
names = file.gets.scan(/\w+/).sort
names.each_with_index do |n, i|
  score = 0
  n.each_byte { |c| score += (c - 64) }
  score *= (i + 1)
  sum += score
end
p sum