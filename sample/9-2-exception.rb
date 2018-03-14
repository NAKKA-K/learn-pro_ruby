# 例外処理の書き方
begin
    # 例外が起きる可能性のある処理
rescue ZeroDivisionError => e # 補足したい例外クラスを指定することもできる
    puts "0除算エラー"
rescue => exception # 例外オブジェクトを格納する
    p exception.class
    p exception.message
    p exception.backtrace
end

# 例外が発生した場合、その地点から例外がキャッチされるまで処理をさかのぼる
# rescueの記述が無い場合は、プログラム全体が終了し、実行が終了する

# rescue構文の後ろに例外オブジェクトを格納する変数を設定することができる(任意)
# 例外オブジェクトから任意の情報を抜き出して、表示することもできる

# 例外クラスは以下の様な継承関係になっている
=begin
Exception --- 特殊なエラー(NoMemoryError, SystemExit)
           |- StandardError --- RuntimeError
                             |- NameError --- NoMethodError
                             |- 等々
=end
# rescue句に例外クラスを指定しない場合、デフォルトでStandardErrorとそのサブクラスを補足する
# 通常、特殊なエラーはrescueしない方が良いため、Exceptionクラスをrescueに指定しない方が良い

# rescue句は上から順番に評価され、指定された例外クラス、またはそのサブクラスを補足する
# スーパークラスを先に指定し、サブクラスを後に指定してしまうと、一生実行されない

# 例外がrescueされたが、ネットワークエラーのような一時的なエラーの場合、rescue句でretryを使ってもう一度処理をすることができる
# ただし、無限ループを発生させないようにカウンタ変数を用意して回数を制限する方が良い
retry_cnt = 0
begin
    1/0
rescue => exception
    retry_cnt += 1
    retry if retry_cnt <= 3
end