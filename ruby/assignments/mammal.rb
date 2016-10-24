class Mammal
  def initialize
    # puts 'I am alive!'
    @health = 150;
  end
  def breathe
    puts 'Inhale and exhale'
  end
  def display_health
    puts @health
  end
end

# Mammal.new.display_health
