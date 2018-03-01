require 'minitest/autorun'
require './lib/convert_length'

class ConvertLengthTest < MiniTest::Test
    def test_convert_length
        assert_equal 39.37, convert_length(1, unit_from: :m, unit_to: :in)
        assert_equal 0.38, convert_length(15, unit_from: :in, unit_to: :m)
        assert_equal 10670.73, convert_length(35000, unit_from: :ft, unit_to: :m)
        assert_equal 12000, convert_length(120, unit_from: :m, unit_to: :cm)
    end
end
