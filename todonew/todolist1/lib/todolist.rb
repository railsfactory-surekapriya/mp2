class Todolist
def initialize(filename)
@pending = []
@todo = []
@completed = []
@filename = filename
end

def pending
return @pending
end

def list
@todo = @pending + @completed
 @todo
end

def completed
@completed
end

def add(tittle)
@pending << tittle
@pending

end

def complete(num)
@completed << @pending[num - 1]
@pending.delete_at(num - 1)
@completed
end

def delete(num)
@completed.delete_at(num-1)
@completed
end

def modify(num, tittle)
@pending[num - 1] = tittle
return @pending[num - 1]
end

def empty
@pending = []
@completed = []
@todo = []
return true
end

def show_pending(num)
return @pending[num - 1]
end

def show_completed(num)
return @completed[num - 1]
end

def save
f = File.open(@filename, "w")
str =""
str = @todo.join("\n")
f.write(str)
f.close
end

def load1
   f = File.open(@filename,'r')
   f.each_line { |line| todo << line }
   @completed = @todo.select {|c| c.match("#done")}
    @pending = @todo - @completed
end

end
