m = gets.chomp.to_f
m = m / 1000
vv = 0

if m < 0.1
  vv = 0
elsif m >= 0.1 and m <= 5
  vv = m * 10
elsif m >= 6 and m <= 30
  vv = m + 50
elsif m >= 35 and m <= 70
  vv = ((m - 30) / 5) + 80
elsif m >= 70
  vv = 89
end


if vv < 10
  vv = vv.floor
  puts "0#{vv}"
else
  vv = vv.floor
  puts vv
end
