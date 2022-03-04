grid = gets.to_i
size = grid * 2
p routes = (size.downto(1).inject(:*))/((grid.downto(1).inject(:*)*(size-grid).downto(1).inject(:*)))
