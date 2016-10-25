require_relative 'human'
class Wizard < Human
  def initialize
    super
    @health = 50;
    @intelligence = 25;
  end
  def heal
    @health += 10
  end
  def fireball(target)
    if (target.class.ancestors.include? Human)
      target.health -= 20;
      true
    else
      false
    end
  end
end

# wiz = Wizard.new
# wiz.heal;
# puts "health: #{wiz.health}; intelligence: #{wiz.intelligence}; stealth: #{wiz.stealth}"
# ted = Human.new
# wiz.fireball ted;
# puts "ted gets flamed: #{ted.health}"
