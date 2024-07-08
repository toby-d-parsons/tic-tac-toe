require 'pry-byebug'
require_relative 'lib/game.rb'

game = Game.new
game.display_board
while !game.has_won? do
    game.change_player
    game.make_move
    game.display_board
end

p "Player #{$active_player[:player]} wins!"
