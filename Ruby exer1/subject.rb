class Subject
	attr_accessor:name,:no_Lectures,:no_hours
	def initialize(name,no_Lectures,no_hours)
		@name,@no_Lectures,@no_hours=name,no_Lectures,no_hours
	end
def to_s
	"#@name #@no_Lectures #@no_hours"
end
end
s1=Subject.new('Name=Ruby Programming','Lectures=3','Labs=2(Total5)')
puts s1
