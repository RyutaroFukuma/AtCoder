n =  gets.to_i
ary = Array.new
count = 0
max = 0


n.times do |i|
  ary[i] = gets.chomp
end

ary.each_with_index do |i, o|
  ary[o..n-1].each
  do |j|
    if i == j
      count += 1
    end
  end
end

p max
p @str
