h, w = gets.chomp.split.map(&:to_i)
a = []

puts "#" * (w+2)
h.times do |i|
  a[i] = gets.chomp
  puts "#" + a[i] + "#"
end
puts "#" * (w+2)

