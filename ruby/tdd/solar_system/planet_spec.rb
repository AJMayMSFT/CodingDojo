require_relative 'planet'
RSpec.describe Planet do

describe "#initialize" do
  it "gets initialized with name, description, and population" do
    pl = Planet.new("Mars", "the red planet", 40)
    expect(pl.name).to eq("Mars")
    expect(pl.description).to eq("the red planet")
    expect(pl.population).to eq(40)
  end

end
end
