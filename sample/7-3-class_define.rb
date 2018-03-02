=begin
`User.new`はinitializeメソッドを呼び出している

クラスのインスタンス変数はクラス内では`@name`の様に呼び出す
インスタンス変数は未定義時に参照してもnilが帰るだけでエラーにならない

インスタンス変数はデフォルトでは外部からアクセスできない
=で終わるメソッドを定義すると代入式を書いたときに、そのメソッドを呼び出すことができる
`attr_accessor`を設定することによってデフォルトのアクセスメソッドを定義省略することができる
読み取りのみさせる場合は`attr_reader`を定義する
書き込みのみをさせる場合は`attr_writer`を定義する

クラスメソッドを定義する場合はメソッド名の先頭に`self.`をつける
`クラス名.クラスメソッド名`で呼び出せる

=end

class User
    attr_accessor :test
    attr_reader :name

    ARIVE = true

    def initialize(name, status = ARIVE)
        @name = name
        @test = nil
    end

    def self.default_price
        ARIVE
    end

    # 複数のUserを作成し、配列で返す
    def self.create_users(names)
        names.map do |name|
            User.new(name, true)
        end
    end

    def name=(value)
        @name = 'name='
    end
end
user = User.new('bob', true)
p user.name
user.name = 'alice'
p user.name

user.test = 'test'
p user.test

p "=========================="
User.create_users(['alice', 'bob', 'harry']).each do |user|
    p user.name
end
