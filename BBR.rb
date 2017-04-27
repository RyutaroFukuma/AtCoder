n = gets.chomp.to_i
s = gets.chomp.split("")
q = gets.chomp.to_i


q.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  answer = s.[](l-1..r-1)

  answer.sort! do |a, b|
    ret = a.casecmp(b)
    ret == 0 ? a <=> b : ret
  end

  array = answer.group_by { |e| e }.sort_by { |e, v| -v.size }.map(&:first).first
  puts array
end
