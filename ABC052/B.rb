n = gets.chomp.to_i
s = gets.chomp.split("")
x = 0
max = 0

n.times do |i|
  if s[i] == "I"
    x += 1
  else
    x -= 1
  end

  if max < x
    max = x
  end
end

puts max
