# ハッシュを変数から生成
name = 'alice'
:"#{name.upcase}" #=> :ALICE

# 文字列を使ってシンボルのkeyを作る
hash = {'a': 123}
