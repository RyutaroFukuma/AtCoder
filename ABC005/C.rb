t = gets.to_i
n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
m = gets.to_i
b = gets.chomp.split(" ").map(&:to_i)
count = 0

if m != n
  puts 'no'
  exit
end

  b.each do |i|
    a.each do |j|

    if i.include?
          count += 1
          next
        else
          i -= 1
        end
      end
    end
  end

if count == m
puts 'yes'
else
  puts 'no'
end
