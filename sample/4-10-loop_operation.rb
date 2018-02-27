# break文
numbers = [1, 2, 3, 4, 5].shuffle
numbers.each do |n|
    break if n == 5
end

# throwとcatchを使った大域脱出
fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
    fruits.shuffle.each do |fruits|
        numbers.shuffle.each do |n|
            if fruits == 'orange' && n == 3
                throw :done
            end
        end
    end
end

# catchの戻り値を設定する
ret = 
    catch :done do
        throw :done
    end
p ret #=> nil

ret =
    catch :done do
        throw :done, 123
    end
p ret #=> 123

# 繰り返し処理で使うbreakとreturnの違い
def greeting(cuntry)
    return 'contryを入力してください' if contry.nil?
    
    if contry == 'japan'
        'こんにちは'
    else
        'hello'
    end
end

# 繰り返し処理を途中で中断し、次のループに進む(next)
numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
    next if n.even?
end

# 繰り返し処理の現在のループ部分を最初からやり直す(redo)
10.times do
    answer = ['はい', 'いいえ'].sample # 配列からランダムに1要素を取得する
    redo if answer == 'いいえ'
end