# each文
numbers = [1, 2, 3, 4]
sum = 0

numbers.each do |num|
    sum += num
end
p sum #=> 10

# 配列から指定した値を削除(indexではなく値を指定する)
a = [1, 2, 3, 1, 2, 3]
a.delete(2)
p a #=> [1, 3, 1, 3]

# 配列とeach文を組み合わせた構文
a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
    n.odd? # 奇数?
end
p a #=> [2, 2]
