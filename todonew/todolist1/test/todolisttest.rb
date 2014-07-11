require_relative '../lib/todolist'
require 'test/unit'
class Todolisttest < Test::Unit::TestCase

def setup

 @t = Todolist.new("abc.txt")

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
# precondition
@t.empty
@t.add("one")
@t.add("two")

#before state
assert_equal 2,@t.pending.size
assert_equal 0,@t.completed.size
assert_equal 2,@t.list.size

#action
@t.show_pending(1)

#after
assert_equal 2,@t.pending.size
assert_equal 0,@t.completed.size
assert_equal 2,@t.list.size
assert_equal "one",@t.show_pending(1)
   
end
def test_qcompleted
# precondition
@t.empty
@t.add("one")
@t.add("two")
@t.add("three")

#before state
assert_equal 3,@t.pending.size
assert_equal 0,@t.completed.size
assert_equal 3,@t.list.size

#action
@t.complete(1)
 
#after
assert_equal 2,@t.pending.size
assert_equal 1,@t.completed.size
assert_equal 3,@t.list.size
assert_equal "one",@t.show_completed(1)
                 
   
end
def test_storage
# precondition
@t.empty
@t.add("five")
@t.add("six")
@t.add("seven")

#before state
assert_equal 3,@t.pending.size
assert_equal 0,@t.completed.size
assert_equal 3,@t.list.size
                 
#action
@t.complete(1)
@t.save
#after saving
assert_equal 2,@t.pending.size
assert_equal 1,@t.completed.size
assert_equal 3,@t.list.size
assert_equal "five",@t.show_completed(1)
                 
 #deleting the elements of array
@t.empty
assert_equal 0,@t.pending.size
assert_equal 0,@t.completed.size
assert_equal 0,@t.list.size
                 
  # calling load function
 @t.load1
  #after loading
assert_equal 2,@t.pending.size
assert_equal 1,@t.completed.size
assert_equal 3,@t.list.size
end
               
end



