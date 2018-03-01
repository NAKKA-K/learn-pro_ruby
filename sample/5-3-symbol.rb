:apple.class #=> Symbol

# 文字列同士の計算より、シンボル同士の計算のほうが高速
:apple == :apple

# 同じシンボルのIDは同じ
:a.object_id #=> 10
:a.object_id #=> 10

# シンボルはイミュータブルで、破壊的な変更はできない
symbol = :apple
#symbol.upcase! #=>　NoMethodError

# ハッシュのキーにはシンボルを使った方が高速に動作する
currencies = {:japan => 'yen', :us => 'dollar'}
currencies[:japan]

# オブジェクトの持っているメソッド名がシンボルで管理されている
:a.methods #=> [:<=>, :==, :===, ...]
