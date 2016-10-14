# while statements
$i = 0
$num = 5
begin
  puts "Inside the loop i = #{$i}"
  puts "$i is not 3" unless $i==3
  $i+=1
end while $i < $num

idx = 0
numx=5
while idx < numx do
  puts "Inside the loop idx is #{idx}"
  idx +=1
end

# for loop
# break terminates the most internal loop
# next jumps to the next interation
# redo restarts the iteration of the most internal loop
for i in 0..5
  puts "Value of local variable is #{i}"
  puts "i is now 3, bitches!" if (i==3)
end
