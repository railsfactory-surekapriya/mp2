=begin
require '../lib/item'
require '../lib/todolist'
class Storage
	attr_accessor :list
	def add(title)
		title = ARGV[1]
		
		@list.add(Item.parse(title))
		
	end
	


	def run_command(args)
		@list=Todolist.parse("todo.txt")
		if(args.first=="add")
			add(args[0])
		end

		list.save(fname)
	end
	def open_file
		afile = File.new("todo.txt", "r")
		if afile
		content = afile.sysread(20)
		puts content
		else
		puts "unable to open file"
		end
	end

end
Storage.new.run_command(ARGV)
 
 list.save("todo.txt")
 list2 = Todolist.load("todo.txt")
 list.items.each { |i| puts i }
 list.delete(item3)
 list.items.each { |i| puts i }

=end









#require_relative '../todolist/lib/todolist.rb'
class Storage
def open_file
	aFile = File.new("storage.txt", "r+")
	if aFile
   	aFile.syswrite("#{item}")
	else
   	puts "Unable to open file!"
	end

def self.dump(str)
	f1 = File.open("storage.txt", "a+")
	f1.puts(str)
	f1.close
	f2 = File.open("storage.txt", "r")
	data1 = f2.read
	f2.close
return data1
end
end
end

