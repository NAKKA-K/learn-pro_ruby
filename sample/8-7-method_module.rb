# モジュールに特異メソッドを定義する
module Loggable
    def self.log(text)
        puts "[LOG] #{text}"
    end
end
Loggable.log("log")

# モジュールを特異メソッドとミックスインの両方として使えるようにする
module Log
    def log(text)
        puts "[LOG] #{text}"
    end

    module_function :log
end

# モジュールにも定数を定義することができる

# Mathモジュールなどはミックスインとしても特異メソッドとしても使える例