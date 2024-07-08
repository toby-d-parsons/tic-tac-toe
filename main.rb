require 'pry-byebug'
require_relative 'lib/game.rb'

game = Game.new
game.display_board
while !game.has_won? do
    if game.is_draw? then 
        p "It's a draw!"
        return
    end
    game.change_player
    game.make_move
    game.display_board
end

p "Player #{$active_player[:player]} wins!"