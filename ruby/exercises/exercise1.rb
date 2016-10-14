# single line comment
=begin
  multi
  line
  comment
  block
=end

END{
  puts "this is in the end block. it runs at the end."
}
puts "hello"
puts "Coding"
puts "Dojo"

BEGIN{
  puts "this is in the begin block. It gets run first."
}

first_name="Andrew"
last_name="May"
puts "Your name is: ", first_name, last_name
#string interpolation
puts "Your first name is #{first_name} and your last name is #{last_name}"
#passing parameters after
puts "Your first name is %s and your last name is %s" % [first_name, last_name]

z = 50
puts "1. The value of z is: #{z}"
#s is for string, d is for decimal
puts "2. The value of z is: %d" % [z]
#special characters: tabs, new lines, and escaping quote marks
puts "\t\tI am\n 5'10\" tall"
