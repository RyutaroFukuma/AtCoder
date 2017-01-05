n, m = gets.chomp.split(" ").map(&:to_i)

a, b, c = 2, 3, 4
x, y, z = 0, 0, 0

if not (m / n.to_f).between?(a, c)
  x, y, z = -1, -1, -1
elsif (m / n) < 3
  y = m - n * b
  x = n - y
else
  z = m - n * b
  x = n - z
end

puts "#{x} #{y} #{z}"
