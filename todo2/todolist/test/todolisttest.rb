require_relative '../lib/todolist.rb'
require 'test/unit'
class Todolisttest < Test::Unit::TestCase
 
def test_empty
 
 assert_equal true,Todolist.empty
assert_equal 0,Todolist.pending
assert_equal 0,Todolist.completed
assert_equal 0,Todolist.list

end
def test_add_first_item
  assert_equal 1,Todolist.add("open")
  assert_equal 1,Todolist.pending
  assert_equal 0,Todolist.completed
  assert_equal 1,Todolist.list
  
end
def test_add_second_item
   assert_equal 2,Todolist.add("search")
   assert_equal 2,Todolist.pending
   assert_equal 0,Todolist.completed
   assert_equal 2,Todolist.list
end
 def test_add_third_item
   assert_equal 3,Todolist.add("merge")
   assert_equal 3,Todolist.pending
   assert_equal 0,Todolist.completed
   assert_equal 3,Todolist.list
end
def test_complete
  assert_equal "search",Todolist.complete(1)
  assert_equal 1,Todolist.completed
  assert_equal 2,Todolist.pending 
  assert_equal 3,Todolist.list
end
def test_modify_item
   assert_equal "write",Todolist.modify(3,"write")
   assert_equal 4,Todolist.pending
   assert_equal 0,Todolist.completed
   assert_equal 4,Todolist.list
 end

def test_completed
   assert_equal 1,Todolist.completed
   assert_equal 2,Todolist.pending
   assert_equal 3,Todolist.list
   
end
def test_delete
  assert_equal 1,Todolist.delete(1)
  assert_equal 3,Todolist.list
  assert_equal 2,Todolist.pending 
  assert_equal 1,Todolist.completed
end
def test_show
   assert_equal 4,Todolist.pending
   assert_equal 0,Todolist.completed
end




def test_show_pending
  assert_equal nil,Todolist.show_pending(2)
  assert_equal nil,Todolist.show_pending(3)

end
def test_show_completed
assert_equal nil, Todolist.show_completed(1)
end
end



