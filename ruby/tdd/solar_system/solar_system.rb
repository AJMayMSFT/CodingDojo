require_relative 'planet'
class Solar_System
  attr_accessor :name
  def initialize(name="Andromeda")
    @name = name
    @planets = []
  end
  def add_planet(planet)
    if (planet.class.ancestors.include? Planet)
      @planets.push(planet)
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
    @planets.length
  end
  def supernova
    @planets.length.times {@planets.pop}
  end
end
