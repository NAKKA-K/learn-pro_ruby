puts [].class #=> Array

# 配列外参照
a = [1, 2, 3]
puts a[100] #=> nil

# エイリアスによって同じ動作をするメソッド
puts a.size #=> 3
puts a.length #=> 3

# 配列の一部を上書き
a[1] = 20
p a

# 新しい要素を追加(定義されていない部分はnil初期化)
a[4] = 50
p a

# 配列の最後に要素を追加する構文
a = []
a << 1
a << 2
a << 3
p a

# 指定要素の削除(配列外だと戻り値nil)
a.delete_at(1)
p a #=> [1, 3]


# ======

# 変数の多重代入
a, b = 1, 2
c, d = [10] #=> 10, nil
e, f = [100, 200, 300] #=> 100, 200

# 商と余りを同時に求めるメソッド
14.divmod(3) #=> [4, 2]

quotient, remainder = 14.divmod(3)
p "商=#{quotient}, 余り=#{remainder}"
