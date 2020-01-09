require 'player'

describe Player do
  let(:subject){described_class.new("Asia")}
  describe "#name" do
    it "returns the players name" do
      expect(subject.name).to eq "Asia"
    end
  end
end