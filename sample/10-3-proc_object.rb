# Procオブジェクト(Kernelモジュールのprocのみでもできる)
puts
hello_proc = Proc.new do
    p 'hello'
end
hello_proc.call

puts
hello_proc = Proc.new { |greet| p greet }
hello_proc.call('Hello')

# ブロックを引数にした場合、Procのインスタンスとして渡される
# そのため、Procインスタンスも同じように渡すことができる
puts
def greeting(&block)
    block.call('Hello')
end
greeting(&hello_proc)

# ブロック引数ではなく、普通の引数として渡すことも可能
puts
def greeting(proc1, proc2)
    p proc1.call
    p proc2.call
end
proc1 = proc {'Hello'}
proc2 = proc {'Hi'}
greeting(proc1, proc2)


# procの作成方法は合計で4つある(Proc.new、proc、->(ラムダリテラル又はアロー演算子)、lambda)
# 以下2つの方法で定義すると、引数の過不足があった場合にArgumentErrorを起こす
->(a, b) {a + b} # かっこは省略できるため`-> a, b {a + b}`とも書ける
lambda {|a, b| a + b}

# `.lambda?`メソッドを呼び出すことで判定できる