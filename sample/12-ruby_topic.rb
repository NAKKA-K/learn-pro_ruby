# 日付を扱う組み込みライブラリはTimeクラス
# ファイルやディレクトリを扱う組み込みライブラリはFileクラスとDirクラス
# CSV,JSON,YAMLを扱うクラスも標準である(requireが必要)

# 環境変数(ENVハッシュ)、起動時引数(ARGVハッシュ)も存在する

# Rubyワンライナーは`ruby -e '～'`で実行できる

# 文字列をrubyプログラムとして実行する
code = 'p 1'
eval(code)

# OSコマンドを実行
puts `echo echo command`

# メソッドを動的に実行したい場合はsendメソッドを使う
str = 'a,b,c'
str.send('upcase') # sendのレシーバーに対して、引数のメソッドを呼び出す
str.send('split', ',')

# セキュリティ問題のあるコードを自動的にチェックしてくれるBrakemanというgem(rails向け)
# RubyのコーディングルールをチェックしてくれるRuboCopというgem
# コードの複雑さ、コピーコード、品質チェックをしてくれるRubyCriticというgem

