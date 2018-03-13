# includeされたモジュールの有無を調べる
module Loggable
end

class Product
    include Loggable
end

Product.include?(Loggable)
Product.included_modules

# ダックタイピングで動くため、モジュール内でincludeされたクラス内の変数へのアクセスを書いても問題ない

# Enumerable, Comparableなどは元から用意されているので、自作クラスにincludeしてもよい
# kernelモジュールはObjectにincludeされている

# 実行時のトップレベルはmainという名前のオブジェクト
# クラスはClassクラスのインスタンスで、モジュールはModuleクラスのインスタンス
# ClassはModuleを継承し、ModuleはObjectを継承している
# どこでもprintやpなどが使用できるのは、基本全ての場所がObjectクラスのインスタンス下であるから

# モジュールトミックスイン先のクラスでインスタンス変数を共有するのはいい設計ではない
# インスタンス変数の存在を前提とせず、メソッドの存在を前提として設計する方が安全

# オブジェクトに直接ミックスインすることもある