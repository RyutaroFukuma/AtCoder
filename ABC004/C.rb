ary = "123456".split("")

n = gets.to_i % 30

n.times do |i|
  a = i % 5
  b = i % 5 + 1
  ary[a], ary[b] = ary[b], ary[a]
end

puts ary.join('')
