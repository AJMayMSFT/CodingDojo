# any returns true or false
puts ['ant', 'shark', 'cat', 'goldfish'].any? {|word| word.length >= 5 }

# calls block once for each element in self, passing the element as a parameter
['ant', 'shark', 'cat', 'goldfish'].each {|word| print word, "--"}

# returns a new array with the results of running block once for every element in enum
puts (1..4).collect {|i| i*i}

puts (1..4).collect {"cat"}

# returns the first for which block is not false
puts (1..10).detect {|i| i %5 == 0 and i % 7 == 0}
puts (1..100).detect {|i| i %5 == 0 and i % 7 == 0}

# returns an array containing all elements for enum for which block is not false
x = (1..10).select {|i| i % 3 == 0 }
puts x

# opposite of find_all
puts (1..10).reject {|i| i % 3 == 0 }

# iterates block up to the int limit
5.upto(10){ |i| print i, " "}
