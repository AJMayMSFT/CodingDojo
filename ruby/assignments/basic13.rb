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

def printSum
  sum = 0
  (1..50).each {|i| puts i; puts "Sum is now: " + (sum += i).to_s}
end

def iterateArray(arr)
  arr.each {|item| puts item}
end

def findMax(arr)
  puts arr.sort.last
end

def getAverage(arr)
  sum = 0
  arr.each {|i| sum += i}
  puts sum / (arr.length-1)
end

def arrayOdd
  y = []
  (1..255).each {|i| y.push(i) if !(i % 2 == 0)}
  puts y
end

def greaterThan(arr, num)
  count = 0
  arr.each {|i| count+=1 if (i > num)}
  puts count
end

# doesn't work
def greaterThanY(arr, num)
  count = 0
  puts count = arr.each {|i| count+=1 if (i > num)}
end

def squareValues(arr)
  puts arr.each {|i| arr[arr.index(i)] = i*i}
end

def eliminateNegative(arr)
  puts arr.each {|i| arr[arr.index(i)] = 0 if (i < 0)}
end

def minMaxAverage(arr)
  min = arr[0]
  max = arr[0]
  sum = 0
  arr.each {|i| min = i if (i < min); max = i if (i > max); sum += i}
  puts min, max, sum / (arr.length)
end

def shiftValues(arr)
  arr.delete_at(0)
  puts arr
end

def numberToString(arr)
  puts arr.each {|i| arr[arr.index(i)] = "Dojo" if (i < 0)}
end

# iterateArray(["sam", 3, 7])
# getAverage([-12, 0, 3, 6, -9])
minMaxAverage([1, -5, 20, -2])
