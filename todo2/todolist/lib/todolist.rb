class Todolist
attr_accessor :filename, :completed, :pending,  :todo
@pending = []
@todo = []
@completed = []

def initialize(filename)
@filename = filename
end

def self.pending
return @pending.size 
end

def self.list
@todo = @pending + @completed
return @todo.size
end

def self.completed
return @completed.size
end

def self.add(item)
@pending << item
return @pending.size

end

def self.complete(num)
@todo[num] + "done"
var = @todo[num]
@completed << var
@pending.delete var

end

def self.delete(num)
@completed.delete_at(num)
return @completed.size
end

def self.modify(num,item)
@pending[num] = item
return @pending[num]

end
def self.empty
@pending.clear
@completed.clear
@todo.clear
return true
end
def self.show_pending(num)
return @pending[num-1]
end
def self.show_completed(num)
return @completed[num-1]
end

 end
