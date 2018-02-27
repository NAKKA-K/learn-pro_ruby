p {}.class #=> Hash

# hashの定義と追加
currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
currencies['iyaly'] = 'euro'

# hashを使った繰り返し処理
currencies.each do |key, value|
    puts "#{key}: #{value}"
end

currencies.each do |key_value|
    puts "#{key_value[0]}: #{key_value[1]}"
end

# hashの同値比較、要素数の取得、要素の削除
a = {'x' => '0', 'y' => '1'}
b = {'x' => '0', 'y' => '1'}
p a == b #=> true

b = {'y' => '1', 'x' => '0'}
p a == b #=> true

b = {'x' => '2', 'y' => '3'}
p a == b #=> false

currencies.delete('japan') # keyがjapanの値を削除
currencies.delete('japan') # 削除できないときはnilが返る
currencies.delete('japan') { |key| "NotFound #{key}" } # キーが無かった時の戻り値を作成
