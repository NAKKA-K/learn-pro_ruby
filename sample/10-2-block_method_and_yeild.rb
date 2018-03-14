# yieldを使うとブロックを呼び出す
puts
def greeting
    p 'hello'
    yield # ここでブロックを呼び出す
end
greeting do
    p 'hi'
end


# ブロックを定義せずにyieldを呼ぶとLocalJumpErrorが発生する
# block_given?メソッドを使用すれば、ブロックの有無を確認できる
puts
def greeting
    p 'hello'
    if block_given?
        yield
    else
        p 'non block'
    end
end
greeting


# yieldから、呼び出し先のブロックの戻り値を受け取ることができる
puts
def greeting
    p 'hello'
    text = yield 'bay'
    p text
end
greeting do |str|
    str * 2
end


# yieldは引数の違いに寛容
# ブロックが受け取る引数が足りなければ、足りない分は無視される
# 引数が多ければ、余った分はnilが代入される


# ブロックを引数として受け取ることもできる(1つのみで、引数の最後にしか指定できない)
# ブロックの有無を調べる場合、blockがnilか判定すればいい
# ブロック引数を設定した場合でも、yieldはそのまま使える
# ブロック引数を設定する利点は、ブロックを別の関数の引数として渡すことができること
# そして、`blcok.arity`とすることでブロックに設定した引数の数を得ることができる
puts
def greeting(&block)
    p 'hello'
    text = block.call('hi') # blockを実行する
    p text
end
greeting do |str|
    str * 3
end

