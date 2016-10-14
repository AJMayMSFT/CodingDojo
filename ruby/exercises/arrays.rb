a = ["John", "Paul", "George", "Ringo"]
b = [12, 3, 8, 2, 9, 125]
c = ["George", 8]
# alternate way of declaring an array of words
d = %w{jimmy john-paul john roger}

x = (a+b) - c
puts x.to_s

puts b.class

puts a.shuffle.join('-')
a.delete("Ringo")
puts "Length is now #{a.length}"

puts d

e = %w{cat dog bear shark}
puts e.values_at(1,2).join(' and ')
