class Human
  attr_accessor :strength, :intelligence, :stealth, :health
  def initialize
    @health = 100;
    @strength = 3;
    @intelligence = 3;
    @stealth = 3;
  end

  def attack(target)
    if (target.class.ancestors.include? Human)
      target.health -= 10;
      true
    else
      false
    end
  end
end

# ted = Human.new
# fred = Human.new
# puts "Fred is feeling heathy: #{fred.health()}"
# ted.attack(fred);
# puts "Ted beecthslaps Fred: #{fred.health()}"
