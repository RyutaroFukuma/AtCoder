a, b, c, d = gets.chomp.split(" ").map(&:to_i)
ab = a * b
cd = c * d

if ab > cd
  puts ab
elsif ab == cd
  puts ab
else
  puts cd
end
