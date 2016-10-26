require_relative 'planet'
class Solar_System
  attr_accessor :name
  def initialize(name="Andromeda")
    @name = name
    @planets = []
    @planet_total = 0
  end
  def add_planet(planet)
    if (planet.class.ancestors.include? Planet)
      @planets.push(planet)
      @planet_total += 1
    else
      "Planets only, please. Sorry, Pluto."
    end
  end
  def list_planets
    list = []
    @planets.each {|p| list.push(p.name)}
    list
  end
  def display_total
    @planet_total
  end
  def supernova
    # @planets.length.times do
    #   @planets.pop
    # end
    @planets.length.times {@planets.pop}
  end
end
