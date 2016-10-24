require_relative 'human'
class Samurai < Human
  @@num = 0
  def initialize
    super
    @health = 200;
    @@num +=1;
  end
  def death_blow(target)
    if (target.class.ancestors.include? Human)
      target.health = 0;
      true
    else
      false
    end
  end
  def meditate
    @health = 200;
  end
  def self.how_many
    @@num
  end
end

sed = Samurai.new
puts "Sed's health is #{sed.health} and his intelligence is #{sed.intelligence}."
fred = Human.new;
sed.death_blow fred;
puts "Freddie's dead: #{fred.health}"

zed = Samurai.new
dred = Samurai.new
puts "There are now #{Samurai.how_many} samurai running around."
