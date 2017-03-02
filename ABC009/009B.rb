n = gets.to_i
ary = []
n.times do |i|
  ary[i] = gets.to_i
end

ary.uniq!
ary.sort!
ary.reverse!

puts ary[1]
