require '../todo/item/lib/item1'
require 'test_unit'

class Teststorage < Test::Unit::Testcase

def storage
assert_equal "true",Item.parse("done")
end
end
