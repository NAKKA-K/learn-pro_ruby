# `alias 新しい名前 元の名前`でメソッドに複数の呼び出し方を追加することができる

# `undef 削除するメソッドの名前`でメソッドの定義を後から削除することができる

# ネストしたクラスの定義
class User
    class BloodType
        attr_reader :type

        def initialize(type)
            @type = type
        end
    end
end

blood_type = User::BloodType.new('B')
blood_type.type #=> B

# 演算子のオーバーライド
class Product
    def ==(other)
        if other.is_a?(Product)
            code == other.code
        else
            false
        end
    end
end


# 等値を判断するメソッドや演算子を理解する
# object_idが等しい場合にtrue(equal?)
# オブジェクトの内容が等しいか同課を確認する(==)
1 == 1.0 #=> true
# ハッシュのキーとして2つのオブジェクトが等しいかを判断する(eql?)
1.eql?(1.0) #=> false
# case文のwhen節で使用される(===)

# Rubyはクラスの継承や変更に対して制限がない。オープンクラスという

# 既存の実装を上書きして期待する挙動にすることをモンキーパッチという

# 元の実装をaliasメソッドとして残し、後から上書きしたメソッドの中で既存のメソッドを再利用することもできる

# オブジェクトに対してメソッドを定義することを特異メソッドという
alice = 'alice'
bob = 'bob'

def alice.shuffle
    chars.shuffule.join
end
 
# クラスメソッド = 特異メソッド

# 呼び出したオブジェクトから指定したメソッドが呼び出せるかかくにんするメソッド(respond_to?)
def display_name(object)
    if object.respond_to?(:name)
        puts "Name is #{object.name}"
    else
        puts "No name"
    end
end

# nil.to_iをすると0が返る