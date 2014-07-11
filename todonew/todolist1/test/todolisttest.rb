require_relative '../lib/todolist.rb'
require 'test/unit'
class Todolisttest < Test::Unit::TestCase

def setup

 @t = Todolist.new("aaa.txt")

end

def teardown
 @t=nil
end




 def test_aempty
  @t.empty
  assert_equal 0,@t.pending.size
  assert_equal 0,@t.completed.size
  assert_equal 0,@t.list.size

 end

def test_add1
#precondition
  @t.empty
#before state
  assert_equal 0,@t.pending.size
  assert_equal 0,@t.completed.size
  assert_equal 0,@t.list.size
#action
  @t.add("one")
#after state
  assert_equal 1,@t.pending.size
  assert_equal 0,@t.completed.size
  assert_equal 1,@t.list.size
end

def test_add2
#precondition
  @t.empty
  @t.add("one")
#before state
  assert_equal 1,@t.pending.size
  assert_equal 0,@t.completed.size
  assert_equal 1,@t.list.size
#action
   @t.add("two")
#afterstate
   assert_equal 2,@t.pending.size
   assert_equal 0,@t.completed.size
   assert_equal 2,@t.list.size
end

def test_complete
#precondition
   @t.empty
   @t.add("one")
   @t.add("two")
#before state
   assert_equal 2,@t.pending.size
   assert_equal 0,@t.completed.size
   assert_equal 2,@t.list.size
#action
   @t.complete(1)
#after state
   assert_equal 1,@t.pending.size
   assert_equal 1,@t.completed.size
   assert_equal 2,@t.list.size
end

def test_delete
#precondition
   @t.empty
   @t.add("one")
   @t.add("two")
   @t.complete(1)
#before state
   assert_equal 1,@t.pending.size
   assert_equal 1,@t.completed.size
   assert_equal 2,@t.list.size
#action
   @t.delete(1)
#after state
   assert_equal 1,@t.list.size
   assert_equal 1,@t.pending.size 
   assert_equal 0,@t.completed.size
end

def test_modify
#precondition
   @t.empty
   @t.add("one")
   @t.add("two")
   @t.complete(1)
   @t.delete(1)
#before state
   assert_equal 1,@t.list.size
   assert_equal 1,@t.pending.size 
   assert_equal 0,@t.completed.size
#action
   @t.modify(1,"three")
#after state
   assert_equal 1,@t.pending.size
   assert_equal 0,@t.completed.size
   assert_equal 1,@t.list.size
 end

def test_pending
    @t.show_pending(1)
end
def test_qcompleted
    @t.show_completed(0)
end


end



