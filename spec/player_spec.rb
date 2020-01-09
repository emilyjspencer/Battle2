require 'player'

describe Player do
  let(:subject){described_class.new("Asia")}
  
  describe "#name" do
    it "returns the players name" do
      expect(subject.name).to eq "Asia"
    end
  end

  describe "#reduce_hp" do
    it "reduces player 2s hp by 10" do
      expect{subject.reduce_hp}.to change{subject.hp}.by(-10)
    end
  end


end