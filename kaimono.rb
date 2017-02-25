n = gets.chomp.to_i
point = 0
sum0 = 0
sum1 = 0
sum2 = 0
sum3 = 0
point0 = 0
point1 = 0
point2 = 0
point3 = 0


n.times do
  v = gets.chomp.split(" ").map(&:to_i)
next if v[1] < 100

if v[0] == 0
  sum0 = sum0 + v[1]
elsif v[0] == 1
  sum1 = sum1 + v[1]
elsif v[0] == 2
  sum2 = sum2 + v[1]
elsif v[0] == 3
  sum3 = sum3 + v[1]
end
end

point0 = (sum0 / 100).ceil * 5
point1 = (sum1 / 100).ceil * 3
point2 = (sum2 / 100).ceil * 2
point3 = (sum3 / 100).ceil * 1

puts point0 + point1 + point2 + point3
