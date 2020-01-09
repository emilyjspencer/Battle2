require './lib/player'

class Game
   def initialize(player_1, player_2)
      @players = [player_1, player_2]
   end

   def name(number)
      @players[number-1].name
   end

   def player_hp(number)
      @players[number-1].hp 
   end

   def attack(number)
    @players[number-1].reduce_hp
   end 

end 