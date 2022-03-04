n = 0
(1901...2001).each do |x|
  (1..12).each do |y|
    t = Time.new(x, y, 1, 12, 0, 0, "+09:00")
    if t.sunday?
      n += 1
    end
  end
end
p n
