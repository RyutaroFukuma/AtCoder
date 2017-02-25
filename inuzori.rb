p1, p2 = gets.chomp.split(" ").map(&:to_i)
p3, p4 = gets.chomp.split(" ").map(&:to_i)
e1, e2, e3, e4 = gets.chomp.split(" ").map(&:to_i)
f1, f2 = gets.chomp.split(" ").map(&:to_i)

ary = [p1, p2, p3, p4].sort
hash = {ary[0] => e1, ary[1] => e2, ary[2] => e3, ary[3] => e4,}
