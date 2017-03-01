R,C = gets.split.map(&:to_i)
sy,sx = gets.split.map(&:to_i)
gy,gx = gets.split.map(&:to_i)

d = [[-1,0],[1,0],[0,-1],[0,1]] #前後左右に移動
route = Array.new(R){Array.new(C)}
c = Array.new(R)
#迷路のデータを受け取るためのR行の空の配列を作成

R.times do |i|
  c[i] = gets.chomp #迷路のデータをcに格納
end

route[sy-1][sx-1] = 0 #スタート地点に0を格納
que = [] #空のキューを作成
que.push([sy-1,sx-1]) #キューの末尾にスタート地点の情報を格納

while que != []  #キューが空になるまで実行する
  shift = que.shift # キューをFOして、shiftに格納
   (0..3).each do |i| #現在地から上下左右に対して値の格納を行う
    y = shift[0] + d[i][0] #d[i]のyと元のyを足してyに格納
    x = shift[1] + d[i][1] #d[i]のxと元のxを足してxに格納

    # 進路以外のパターンを検知
    if (y<0||y>=R)||(x<0||x>=C)||c[y][x]=='#'

    #進路('.')を見つける
    #進んだ先の座標が'.'、かつ、まだ通ってないルートならば
    elsif c[y][x] == '.'&&route[y][x] == nil
    #進んだ先のマスに対して、元のマスが持つ値の+1した値を格納
      route[y][x] = route[shift[0]][shift[1]] + 1
    #もとの座標を#とする
      c[y][x] = '#'
    #キューの末尾に[y,x]の値を格納
      que.push([y,x])
    end
  end
end

#ゴール地点の座標に格納されている値を表示
puts route[gy-1][gx-1]
