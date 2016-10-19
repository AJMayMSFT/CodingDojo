class Mammal
  @@health = 150;
  def initialize
    # puts 'I am alive!'
  end
  def breathe
    puts 'Inhale and exhale'
  end
  def display_health
    puts @@health
  end
end

# Mammal.new.display_health
