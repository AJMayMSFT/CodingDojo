require_relative 'human'
class Ninja < Human
  def initialize
    super
    @stealth = 175;
  end
  def steal
    @health += 10
  end
  def get_away
    @health -= 15
  end
end

ned = Ninja.new
puts "Ned's stealth: #{ned.stealth} and health: #{ned.health}"
puts "Ned's health after stealing: #{ned.steal}"
puts "Ned gets away: #{ned.get_away}"
