require 'test/unit'
require './roman.rb'

class TestRoman < Test::Unit::TestCase

  def test_ok
    expectations = [
      [1, 'I'], [2, 'II'], [3, 'III'], [4, 'IV'], [5, 'V'],
      [8, 'VIII'], [9, 'IX'], [49, 'XLIX'], [50, 'L'], [70, 'LXX'],
      [499, 'CDXCIX'], [900, 'CM'], [4876, 'MMMMDCCCLXXVI']
    ];
    expectations.each do |arabic, roman|
      assert_equal(to_roman(arabic), roman);
    end
  end

  #def test_argument_validation
   # [1, 2, 35, 4998, 4999].each do |n|
    #  assert_nothing_raised() {to_roman n}
    #end
    #[-234, -1, 0, 5000, 5001, 235234235235235].each do |n|
     # assert_raise(ArgumentError) {to_roman n}
    #end
  #end
end
