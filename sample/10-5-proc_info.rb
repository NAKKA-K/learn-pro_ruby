# procオブジェクトの実行方法
add_proc = Proc.new {|a, b| a + b}
add_proc.call(10, 20)
add_proc.yield(10, 20)
add_proc.(10, 20)
add_proc[10, 20]
add_proc === [10, 20] # case文で使用するため

# procオブジェクトを使ってwhenの分岐をする
def judge(age)
    adult = Proc.new {|n| n > 20}
    child = Proc.new {|n| n < 20}

    case age
    when adult
        '大人'
    when child
        '子供'
    else
        'はたち'
    end
end

# mapメソッドにブロックの代わりにProcオブジェクトを渡す
reverse_proc = Proc.new {|s| s.reverse}
['Ruby', 'Java', 'Perl'].map(&reverse_proc)

# procオブジェクトに&をつけて渡した場合、ブロックと認識させ、to_procメソッドを呼び出している

# シンボルに対してto_procを呼び出す
split_proc = :split.to_proc
split_proc.call('a-b-c-d e') #=> ["a-b-c-d", "e"]
split_proc.call('a-b-c-d e', '-') #=> ["a", "b", "c", "d e"]
split_proc.call('a-b-c-d e', '-', 3) #=> ["a", "b", "c-d e"]

# シンボルに対してto_procを呼び出すとprocオブジェクトになる
# それを応用したものが、['ruby'].map(&:upcase)のような書き方になる


# procオブジェクトの中身は生き続けるため、継続的に使い続けることができる
def generate_proc(array)
    counter = 0
    # procオブジェクトをメソッドの戻り値にする
    Proc.new do
        counter += 10
        array << counter
    end
end
# procオブジェクトを生成しただけ(callしていない)
values = []
sample_proc = generate_proc(values)
values #=> []
# procオブジェクト内部の状態を保持している
sample_proc.call
values #=> [10]
sample_proc.call
values #=> [10, 20]

# Procでreturnを使うと、procを呼び出しているメソッドの外に出る
# Procでbreakを使うと、LocalJumpErrorが発生する
# lambdaでreturnを使うと、lambda内の処理から抜けるだけ
# lambdaでbreakを使うと、lambda内のreturnと同じ挙動にしかならない

# Procやlambdaでreturn、breakを使うとややこしいため、あまり使わないような処理を書くのが吉
