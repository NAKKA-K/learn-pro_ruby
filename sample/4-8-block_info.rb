# each処理で添え字を使う
fruits = ['apple', 'orange', 'melon']
fruits.each_with_index { |fruits, i| puts "#{i}: #{fruits}"}

# 添え字付きの繰り返し処理
p fruits.map.with_index { |fruits, i| "#{i}: #{fruits}" }
#=> ["0: apple", "1: orange", "2: melon"]
p fruits.delete_if.with_index { |fruits, i| fruits.include?('a') && i.odd? }
#=> ["apple", "melon"]
p fruits.each
#=> #<Enumerator: ["apple", "orange", "melon"]:each>

# 添え字を0以外から始める
fruits.each.with_index(1) { |fruits, i| puts "#{i}: #{fruits}"}

# 配列がブロック引数に渡される場合(ブロック引数が多い場合はnilで初期化される)
dimensions = [
    [10, 20],
    [30, 40],
    [50, 60],
]
areas = []
dimensions.each do |length, width|
    areas << length * width
end

# 配列をブロックに渡し、同時に添え字も渡す場合
dimensions.each_with_index do |length, width, i|
    puts "length: #{length}, width: #{width}, i: #{i}"
    # 引数の位置がおかしくなる
    #=> length: [10, 20], width: 0, i:
end
# 配列をうまく渡すには、()を使う必要がある
dimensions.each_with_index do |(length, width), i|
    puts "length: #{length}, width: #{width}, i: #{i}"
    #=> length: 10, width: 20, i: 0
end

# 繰り返し処理以外のブロック
File.open("./sample.txt", "w") do |file|
    file.puts("1行の目テキストです")
    file.puts("2行の目テキストです")
    file.puts("3行の目テキストです")
end