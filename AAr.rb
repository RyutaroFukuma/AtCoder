k, l, m = gets.chomp.split(" ").map(&:to_i)
array = Array.new
answer = -1

k.times do
  array << 1
end

l.times do
  array << 2
end

permutation = array.permutation.collect {|a| a.join }.join(" ")
candidate = permutation.chomp.split(" ").map(&:to_i)

candidate.each do |i|
  if i % m == 0
    answer = i
    break
  end
end

puts answer
