def print255
 (1..255).each {|i| puts i}
end

def print255Odd
  (1..255).each {|i| puts i if !(i %2 == 0)}
end

def print255Odd_v2
  i = 1
  max = 255
  while i <= max do
    puts i
    i += 2
  end
end

print255Odd_v2
