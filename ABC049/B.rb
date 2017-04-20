h, w = gets.chomp.split(" ").map(&:to_i)
picture = []
h.times do
  low = gets.chomp
  2.times do
    picture << low
  end
end

puts picture
