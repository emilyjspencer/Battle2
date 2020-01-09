require 'game'

describe Game do
   let(:player_1){double :player_1, :name => "Asia", :hp => 100}
   let(:player_2){double :player_2}
   let(:subject){described_class.new(player_1, player_2)}

  describe '#attack' do
    it 'attacks the player' do
      expect(player_2).to receive(:reduce_hp)
      subject.attack(2)  # checking 
    end 
  end 

  describe "#name" do
    it "returns players name" do
      expect(subject.name(1)).to eq "Asia"
    end
  end

  describe "#player_hp" do
    it "returns players hp" do
      expect(subject.player_hp(1)).to eq 100
    end
  end

end 