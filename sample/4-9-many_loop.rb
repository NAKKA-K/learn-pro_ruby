# 決まった回数繰り返す処理
sum = 0
5.times { |n| sum += n }
p sum #=> 10

# nからmまで、mからnまでの数値を使って繰り返し
a = []
10.upto(14) { |n| a << n }
p a #=> [10, 11, 12, 13, 14]

a = []
14.downto(10) { |n| a << n }
p a #=> [14, 13, 12, 11, 10]

# 数値を数個ずつ増やしながら繰り返し処理。開始置.step(上限値, 増減数)
a = []
1.step(10, 2) { |n| a << n }
p a #=> [1, 3, 5, 7, 9]

a = []
10.step(1, -2) { |n| a << n }
p a #=> [10, 8, 6, 4, 2]

# 条件がtrueの間繰り返し(while文)
a = []
while a.size < 5
    a << 1
end
p a #=> [1, 1, 1. 1. 1]

a << 1 while a.size < 5 # 後置while

# 条件がfalseの間繰り返し(until文)
until a.size == 0
    a.delete_at(0)
end
p a #=> []

# 最低1回は処理をしたい繰り返し
a = []
begin
    a << 1
end while false
p a #=> [1]

# each文と同じだが、ブロック内で定義した変数がブロック外でも使用できるfor文
numbers = [1, 2, 3, 4]
sum = 0
for n in numbers
    sum += numbers
end
p sum #=> 10

# 無限ループ
loop do
    n = 0
    break if n == 0
end