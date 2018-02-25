numbers = [1, 2, 3, 4, 5]
new_number = []
numbers.each { |n| new_number << n * 10 }
p new_number

# blockの戻り値を配列の各要素とし、最後に配列を返す(map/collect)
new_number = numbers.map { |n| n * 10 }
p new_number #=> [10, 20, 30, 40, 50]

# blockの戻り値が真の場合のみ配列として返される(select/find_all)
even_numbers = numbers.select { |n| n.even? }
p even_numbers #=> [2, 4]
# blockの戻り値が偽の場合のみ配列として返される
non_multiples_of_three = numbers.reject { |n| n % 3 == 0}
p non_multiples_of_three #=> [1, 2, 4, 5]

# blockの戻り値が真になった最初の要素を返す(find/detect)
even_number = numbers.find { |n| n.even? }
p even_number #=> 2


# たたみこみ演算を行う構文。injectの引数はresultの初期値。ブロックの戻り値は毎回resultに代入される
sum = numbers.inject(0) { |result, n| result + n }
p sum #=> 15

# たたみこみ演算の文字結合ver
p ['Fizz', 'Buzz'].inject('') { |result, n| result + n } #=> FizzBuzz

# &とシンボルを使ってブロックをもっと簡潔に書く
['ruby', 'java', 'python'].map { |s| s.upcase }
['ruby', 'java', 'python'].map(&:upcase)

[1, 2, 3, 4, 5, 6].select { |n| n.odd? }
[1, 2, 3, 4, 5, 6].select(&:odd?)
