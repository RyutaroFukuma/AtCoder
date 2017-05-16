ax,ay,bx,by,t,v = gets.chomp.split(" ").map(&:to_i)
n = gets.to_i
wx = []
wy = []
r = 0

n.times do |i|
  wx[i],wy[i] = gets.chomp.split(" ").map(&:to_i)
end
n.times do |i|
  move = ((wx[i]-ax)**2+(wy[i]-ay)**2)**(0.5)+((bx-wx[i])**2+(by-wy[i])**2)**(0.5)
  if move <= v*t
    r +=1
  end
end
if r > 0
  puts 'YES'
else
  puts 'NO'
end
