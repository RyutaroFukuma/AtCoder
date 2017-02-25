a, b = gets.chomp.split(" ").map(&:to_i)
if a == b
  puts "Draw"
else
  if a == 1
    puts "Alice"
  elsif b == 1
    puts "Bob"
  else
    if a > b
      puts "Alice"
    else
      puts "Bob"
    end
  end
end
