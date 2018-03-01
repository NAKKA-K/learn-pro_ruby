# keyの一覧を取得する
currencies = {japan: 'yen', us: 'dollar'}
currencies.keys

# valueの一覧を取得する
currencies.values

# keyが存在するか確認する(その他エイリアス)
currencies.hash_key?
currencies.key?
currencies.include?
currencies.member?

# ハッシュの展開(splat展開と同じ)
{test: 'test', **currencies}

{test: 'test'}.marge(currencies)

# 任意のキーワードを受け付ける**引数
def buy_burger(menu, drink: true, potato: true, **option)
end
buy_burger('burger', salad: true, chicken: true)

# 引数に渡す最後の引数がハッシュであれば{}を省略できるシンタックスシュガー
buy_burger('burger', {'salad' => true, 'chicken' => true})
buy_burger('burger', 'salad' => true, 'chicken' => true)

# ハッシュの初期値を理解する
h = {}
h[:foo] #=> nil

h = Hash.new {'hello'}
h[:foo] #=> hello
h #=> {}

h = Hash.new { |hash, key| hash[key] = 'hello'}
h[:foo] #=> hello
h #=> {foo: 'hello'}
