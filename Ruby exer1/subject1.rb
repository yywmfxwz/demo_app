x=10
y=20
puts "#{x}+#{y}=#{x+y}"
puts "x+y=#{x+y}"
"xyz".scan(/./){|letter|puts letter}
"This is a good boy".scan(/\w\w/){|x| puts x}

x=["put","my","hands"]
puts x.join(' ')
puts "This is a test".scan(/\w/).join(' ')