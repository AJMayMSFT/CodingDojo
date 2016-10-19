class MathDojo
  @@total = 0
  def add(*num)
    puts num.each{|n| @@total += n }
    self
  end
  def subtract(*num)
    puts num.each{|n| @@total -= n}
    self
  end
  def result()
    return @@total
  end
end

# puts MathDojo.new.add(2).add(2, 5).subtract(3, 2).result

class MathDojoArray
  @@total = 0
  def add(*arr)
    arr.each{|n| if (n.class == Array)
      n.each {|a| @@total += a }
    else
      @@total += n
    end }
    self
  end
  def subtract(*arr)
    arr.each{|n| if (n.class == Array)
      n.each {|a| @@total -= a }
    else
      @@total -= n
    end }
    self
  end
  def result()
    return @@total
  end
end

puts MathDojoArray.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result
