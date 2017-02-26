deg, dis = gets.chomp.split(' ').map(&:to_i)
deg /= 10.0
deg = ((deg + 11.25) / 22.5).to_i
deg = deg == 1  ? 'NNE'
    : deg == 2  ? 'NE'
    : deg == 3  ? 'ENE'
    : deg == 4  ? 'E'
    : deg == 5  ? 'ESE'
    : deg == 6  ? 'SE'
    : deg == 7  ? 'SSE'
    : deg == 8  ? 'S'
    : deg == 9  ? 'SSW'
    : deg == 10 ? 'SW'
    : deg == 11 ? 'WSW'
    : deg == 12 ? 'W'
    : deg == 13 ? 'WNW'
    : deg == 14 ? 'NW'
    : deg == 15 ? 'NNW'
    : 'N'

dis = (dis/6.0).round
dis = dis.between?(0, 2)     ? 0
    : dis.between?(3, 15)    ? 1
    : dis.between?(16, 33)   ? 2
    : dis.between?(34, 54)   ? 3
    : dis.between?(55, 79)   ? 4
    : dis.between?(80, 107)  ? 5
    : dis.between?(108, 138) ? 6
    : dis.between?(139, 171) ? 7
    : dis.between?(172, 207) ? 8
    : dis.between?(208, 244) ? 9
    : dis.between?(245, 284) ? 10
    : dis.between?(285, 326) ? 11
    : 12

if dis == 0
  deg = 'C'
end

puts "#{deg} #{dis}"
