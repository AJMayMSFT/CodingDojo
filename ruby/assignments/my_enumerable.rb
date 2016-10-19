module MyEnumerable
  def my_each
    #your code here!
    #self.each {|i| puts i}
    self.each {|n| yield n }
  end
end
class Array
   include MyEnumerable
end
[1,2,3,4].my_each { |i| puts i }
#[1,2,3,4].my_each
