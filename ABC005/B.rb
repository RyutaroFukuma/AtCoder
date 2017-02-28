n = gets.to_i
ary = []
n.times do
  t = gets.to_i
  ary.push(t)
end

ary.sort!
puts ary[0]
