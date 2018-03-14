class Array
    def myeach
        i = 0
        while i < self.size
            yield self[i] # ブロック引数に値を返す。ブロックの処理が終わった後、ここに処理が戻る
            i += 1
        end
    end
end

[10, 20, 30].myeach do |item|
    p item
end
