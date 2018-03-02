text = <<~TEXT
I love Python.
Ruby is a great language.
Java and JavaScript are different.
TEXT

text.scan(/[A-Z][A-Za-z]+/) #=> ["Python", "Ruby", "Java", "JavaScript"]

# ある形式の文字列を変換する
text = <<~TEXT
郵便番号は1234567です
住所は6770056で 東京都1234です
TEXT
p test.gsub(/(\d{3})(\d{4})/, '\1-\2')
=begin
郵便番号は123-4567です
住所は677-0056で 東京都1234です
=end