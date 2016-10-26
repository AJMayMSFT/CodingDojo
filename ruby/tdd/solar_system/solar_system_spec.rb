require_relative 'solar_system'
RSpec.describe Solar_System do

  describe "#initialize" do
    it "can be initialized with a name" do
      ss = Solar_System.new("Mergatroid")
      expect(ss.name).to eq('Mergatroid')
    end
    it "can be initialized with a default name of Andromeda" do
      ss = Solar_System.new
      expect(ss.name).to eq('Andromeda')
    end
  end

  describe '#planets' do
    it 'contains a list of all the planets in the solar system' do
      ss = Solar_System.new
      earth = Planet.new("Earth", "We live on it", 9000)
      mars = Planet.new("Mars", "the red one", 35)
      uranus = Planet.new("Uranus", "what?", 7890)
      ss.add_planet(earth)
      ss.add_planet(mars)
      ss.add_planet(uranus)
      expect(ss.list_planets).to eq(["Earth", "Mars", "Uranus"])
    end
  end

  describe '#display_total' do
    it 'returns the number of planets in the solar system' do
      ss = Solar_System.new
      earth = Planet.new("Earth", "We live on it", 9000)
      mars = Planet.new("Mars", "the red one", 35)
      uranus = Planet.new("Uranus", "what?", 7890)
      ss.add_planet(earth)
      ss.add_planet(mars)
      ss.add_planet(uranus)
      expect(ss.display_total).to(eq(3))
    end
  end
  describe '#add_planet' do
    it 'adds bodies of type planet only' do
        ss = Solar_System.new
        expect(ss.add_planet("Pluto")).to eq("Planets only, please. Sorry, Pluto.")
    end
  end
  describe '#supernova' do
    it 'destroy all life in the solar system' do
      ss = Solar_System.new
      earth = Planet.new("Earth", "We live on it", 9000)
      mars = Planet.new("Mars", "the red one", 35)
      uranus = Planet.new("Uranus", "what?", 7890)
      ss.add_planet(earth)
      ss.add_planet(mars)
      ss.add_planet(uranus)
      ss.supernova
      expect(ss.list_planets).to eq([])
    end
  end
end
