# クラスインスタンス変数
# @nameのようなインスタンス変数だが、
# レシーバーを介さないクラスメソッドやクラス直下での使用をした場合、クラスインスタンス変数という特殊なステータスになる
# サブクラス、スーパークラス間では共有されない

# クラス変数
# @@nameのような変数で、全インスタンス間で共通の値を持つ変数
# サブクラス、スーパークラス間で共有される

# グローバル変数と組み込み変数
# $DEBUGの様に、$から始まる変数
# クラスの内部、外部を問わずアクセスできる特殊な変数