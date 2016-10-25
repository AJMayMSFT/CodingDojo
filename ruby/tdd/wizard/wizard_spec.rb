require_relative 'wizard'
RSpec.describe Wizard do
  before :each do
    @wiz = Wizard.new
  end
  describe "#initialize" do
    it 'is created with 50 health and 25 intelligence' do
      # wiz = Wizard.new
      expect(@wiz.health).to eq(50)
      expect(@wiz.intelligence).to eq(25)
    end
  end
  describe "#heal" do
    it 'increases health by 10' do
      # wiz = Wizard.new
      @wiz.heal
      expect(@wiz.health).to eq(60)
    end
  end
  context "ancestor chain" do
    it 'inherits from human' do
      # wiz = Wizard.new
      expect(@wiz.class.ancestors.include? Human).to eq(true)
    end
  end
  describe "#fireball" do
    it 'decreases targets health by 20' do
      ted = Human.new
      @wiz.fireball ted;
      expect(ted.health).to eq(80)
    end
  end
end
