Regexp.new('\d{3}-\d{4}')

# 正規表現の中で\#{}で式展開をすることができる

# 正規表現にオプションをつけることができる(iは大小を区別しない)
'HELLO' =~ /hello/i #=> 0

Regexp.new('hello', Regexp::IGNORECASE)

# xオプションを使用すると、空白が無視され#を使ったコメントが書けるようになる(\ で空白文字)
Regexp.new('hello', Regexp::IGNORECASE | Regexp::MULTILINE)

# 組み込み変数でマッチの結果を取得する
text = '私の誕生日は1997年7月17日です'
text =~ /(\d+)年(\d+)月(\d+)日/
$~ #=> <MatchData "1997年7月17日" 1:"1997" 2:"7" 3:"17"> # MatchDataオブジェクト
$& #=> "1997年7月17日" # マッチした全体を取得
$1 #=> "1997" # 1番目のキャプチャを取得
$+ #=> "17" # 最後のキャプチャを取得

# クラスメソッドを使用してマッチの結果を取得する
Regexp.last_match
Regexp.last_match(0)
Regexp.last_match(1)
Regexp.last_match(-1)

# 組み込み変数を書き換えたくない場合はmatch?メソッドを使う

