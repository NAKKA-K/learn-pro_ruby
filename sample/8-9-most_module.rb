# メソッドの探索ルール
# 自分のクラス、ミックスイン、親クラスといったように近い順番に探索する
# クラス名.ancestorsで探索順がリストで取得できる

# モジュールをincludeしたモジュールをincludeすることもできる
# この場合近いモジュールから探索する

# モジュールをprependでミックスインした場合、探索順が自クラスよりミックスイン先のメソッドのほうが早くなる
# prependを使うことにより、モジュール内でクラスのメソッドをsuperとして呼び出すことができる

# refineメソッドを使ってメソッドのスコープを設定することができる
# refineでスコープを限定されたメソッドは、usingで定義した場所でしか有効にならない
module StringShuffle
    refine String do # refinementsを適用するクラスを指定(2.4からモジュールも指定できる)
        def shuffle
            chars.shuffle.join
        end
    end
end

# 'Alice'.shuffle #=> NoMethodError
class User
    using StringShuffle
    def initialize(name)
        @name = name
    end
    def shuffle_name
        @name.shuffle
    end
end
p User.new('Alice').shuffle_name

# ::と.の違い
# 名前空間::クラス名::メソッド名でもアクセスできる
# 基本的には変わらないが、.の右側にはメソッドしか置くことができない
# 慣習的には名前空間は::で区切り、メソッドは.で呼び出す