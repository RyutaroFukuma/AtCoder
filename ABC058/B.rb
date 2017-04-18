o = gets.chomp.split("")
e = gets.chomp.split("")

i, pw = 0, ""

while i < o.size
  pw += o[i]

  break if e[i].nil?
  pw += e[i]

  i += 1
end

puts pw
