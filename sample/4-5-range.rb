p (1..5).class #=> Range
p (1...5).class #=> Range

# Rangeに含まれるか判定する
range = 1..5
p range.include?(0) #=> false
p range.include?(4.9) #=> true
p range.include?(5) #=> true
p (1...5).include?(4.9) #=> true
p (1...5).include?(5) #=> false

# 配列や文字列の一部を抜き出す
a = [1, 2, 3, 4, 5]
p a[1..3] #=> [2, 3, 4]

a = 'abcdef'
p a[1..3] #=> "bcd"


# n以上m以下、n以上m未満の判定をする
def liquid?(temperature)
    (1...100).include?(temperature)
end
p liquid?(0) #=> false
p liquid?(1) #=> true
p liquid?(100) #=> false

# case文でrangeを活用する
def charge(age)
    case age
    when 0..5
        0
    when 6..12
        300
    when 13..18
        600
    else
        1000
    end
end
p charge(3) #=> 0
p charge(18) #=> 600

# 値が連続する配列を作成する
p (1..5).to_a #=> [1, 2, 3, 4, 5]
p ('a'..'e').to_a #=> ["a", "b", "c", "d", "e"]
p ('bad'..'bag').to_a #=> ["bad", "bae", "baf", "bag"]
# splat展開
p [*1..5] #=> [1, 2, 3, 4, 5]

# 繰り返し処理
sum = 0
(1..4).each { |n| sum += n }
numbers = []
(1..10).step(2) { |n| numbers << n }
p numbers #=> [1, 3, 5, 7, 9]
