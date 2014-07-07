require '../lib/numbers'
require 'test/unit'


class TestNumbers < Test::Unit::TestCase



  def test_num
    assert_equal '1st',Numbers.convert(1)
    assert_equal '2nd',Numbers.convert(2)
    assert_equal '3rd',Numbers.convert(3)
    assert_equal '4th',Numbers.convert(4)
    assert_equal '10th',Numbers.convert(10)
    assert_equal '21st',Numbers.convert(21)
    assert_equal '29th',Numbers.convert(29)
    assert_equal '31st',Numbers.convert(31)
  end



end 
