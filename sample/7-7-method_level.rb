# extends class
class Product
end

class DVD < Product
    def initialize
        super # 引数をそのまま親クラスの呼び出しに適応する
    end
end

# privateメソッドはサブクラスでも呼び出せる

# クラスメソッドはprivateキーワードの下に配置してもprivateにならない
# クラスメソッドをprivateにしたい場合
# class << self 構文ならクラスメソッドでもprivate指定できる
# もしくはprivate_class_methodキーワードを使用して、定義後に公開レベルを変更する

# protectedメソッドはそのメソッドを定義したクラス自身と、そのサブクラスのインスタンスメソッドからレシーバ付きで呼び出せる

# 継承したときにスーパークラスにあるインスタンス変数と被ってしまうと、意図しない挙動を返してしまう

