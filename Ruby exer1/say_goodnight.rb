class Subject
attr_accessor:name,:no_Lectures
def initialize(name,no_Lectures)
@name=name
@no_Lectures=no_Lectures
end
def to_s
"#@name 
#@no_Lectures"
end
end
S1=Subject.new('Ruby Programming',3)
puts S1