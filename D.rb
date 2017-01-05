n = gets.to_i
arr = Array.new
count = 0
i = 1

n.times do
  arr.push(gets.to_i)
end

ans = arr.sort

until arr.max_by  do
  if arr[i] > arr[i-1]
    arr.swap!(i, i-1)
    i += 1
    count += 1
  end
end

puts count
