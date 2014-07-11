require_relative '../lib/todolist.rb'
require 'test/unit'
class Todolisttest < Test::Unit::TestCase
 $t = Todolist.new("aaa.txt")
def test_1aempty

assert_equal true,$t.empty
assert_equal 0,$t.pending
assert_equal 0,$t.completed
assert_equal 0,$t.list

end

def test_2add1

  assert_equal 1,$t.add("open")
  assert_equal 1,$t.pending
  assert_equal 0,$t.completed
  assert_equal 1,$t.list
  
end
def test_3add2

   assert_equal 2,$t.add("save")
   assert_equal 2,$t.pending
   assert_equal 0,$t.completed
   assert_equal 2,$t.list
end
 def test_4add3

   assert_equal 3,$t.add("merge")
   assert_equal 3,$t.pending
   assert_equal 0,$t.completed
   assert_equal 3,$t.list
end

def test_5complete

  assert_equal 1,$t.complete(1)
  assert_equal 2,$t.complete(2)
  assert_equal 1,$t.pending 
  assert_equal 2,$t.completed
  assert_equal 3,$t.list
end

def test_6delete

  assert_equal 1,$t.delete(1)
  assert_equal 2,$t.list
  assert_equal 1,$t.pending 
  assert_equal 1,$t.completed
end
def test_7modify

   assert_equal "write",$t.modify(1,"write")
   assert_equal 1,$t.pending
   assert_equal 1,$t.completed
   assert_equal 2,$t.list
 end


def test_8pending

  assert_equal "write",$t.show_pending(1)

end
def test_9qcompleted

assert_equal nil, $t.show_completed(2)
end


end



