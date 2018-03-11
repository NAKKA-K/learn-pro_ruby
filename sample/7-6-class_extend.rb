=begin
標準ライブラリの継承関係
BasicObject --- Object --- String
                        |- Array
                        |- Hash
                        |- Numeric --- Integer
                                    |- Float
                                    |- Rationnal
                                    |- Complex
=end

class User
end

user = User.new
user.to_s
user.nil? #=> false

User.superclass #=> Object

user.methods.sort #=> [:!, :!=, ...]

user.instance_of?(User) #=> true
user.is_a?(User) #=> true
user.is_a?(Object) #=> true

