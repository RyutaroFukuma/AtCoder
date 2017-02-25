d, t = gets.chomp.split(" ")

d = d.split("/")
tmpmm = d[0]
d = d.map(&:to_i)
t = t.split(":")
tmptt = t[1]
t = t.map(&:to_i)


if t[0] >= 24
  until t[0] < 24
    t[0] = t[0] - 24
  d[1] += 1
  end
end

if t[0] < 10
  puts tmpmm + "/" + "#{d[1]}" + " " + "0" + "#{t[0]}" + ":" + tmptt
else
  puts tmpmm + "/" + "#{d[1]}" + " " + "#{t[0]}" + ":" + tmptt
end
