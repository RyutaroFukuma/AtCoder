a, b, c = gets.chomp.split(" ").map(&:to_i)

if b - a == c - b
  puts 'YES'
else
  puts 'NO'
end
