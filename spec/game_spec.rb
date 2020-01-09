require 'game'

describe Game do
  
   let(:player_1){double :player_1}
   let(:player_2){double :player_2}

  describe '#attack' do
    it 'attacks the player' do
      expect(player_2).to receive(:reduce_hp)
      subject.attack(player_2)  # checking 
      
      # expect(player_2).to receive(:reduce_hp) # mock 
      
      #subject.attack(player_2)
      # expect(player2.hp).to eq 90

    end 

  end 

end 