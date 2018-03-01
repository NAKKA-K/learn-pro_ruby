# シンボルがキーの場合のシンタックスシュガー
currencies = {japan: 'yen', us: 'dollar'}
currencies[:us]

# 値もシンボルの場合
currencies = {japan: :yen, us: :dollar}

# メソッドのキーワード引数とハッシュ
def buy_burger(menu, drink: true, potato: true)
end
buy_burger('burger', drink: true) # 引数の名前を指定できる。引数を渡さない場合はデフォルト設定の値を使用する

# キーワード引数に一致するハッシュは引数として渡すこともできる
params = {drink: true, potato: true}
buy_burger('burger', params)