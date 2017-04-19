n = gets.chomp.to_i
t = gets.chomp.split(" ").map(&:to_i)
m = gets.to_i
sum = t.inject(:+)

m.times do
  p, x = gets.chomp.split(" ").map(&:to_i)
  puts sum - (t[p-1] - x)
end
