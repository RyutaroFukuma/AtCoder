x, y = gets.chomp.split(' ').map(&:to_i)
if x < y
  puts y
else
  puts x
end
