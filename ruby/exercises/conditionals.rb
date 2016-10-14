# if else structure
x = 1
if (x > 2)
  puts "x is greater than 2"
elsif (x < 2 and x!=0)
  puts "x is 1"
else
  puts "I can't guess the number"
end

# inline conditionals
puts "x is not 2" if (x != 2)
puts "x is greater than 2" if (x > 2)

# unless conditional--unique to ruby
puts "x is not 2 (unless version)" unless (x==2)

# fuller unless example
partyAge = 18
unless (partyAge < 21)
  puts "welcome to the party"
else
  puts "nice try, kid"
end

# case statement
age = 5

case age
when 0..2
  puts 'baby'
when 3..6
  puts 'little child'
when 7..12
  puts 'child'
when 13..18
  puts 'teenager'
else
  puts 'adult'
end

puts 'ruby' unless nil
puts 'string' unless ""
puts 'arrary' unless []
