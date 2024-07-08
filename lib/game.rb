class Game
    def initialize
        $board = Array.new(9, "-")
        $turn = 2
    end
    def display_board
        p "| #{$board[0]} | #{$board[1]} | #{$board[2]} |"
        p "| #{$board[3]} | #{$board[4]} | #{$board[5]} |"
        p "| #{$board[6]} | #{$board[7]} | #{$board[8]} |"
    end
    def make_move
        p "It's player #{$turn}'s turn"
        position = gets.chomp.to_i
        $board[position] = $turn
    end
    def has_won?
        win_combos = [
            [0, 1, 2],
            [3, 4, 5],
            [6, 7, 8],
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8],
            [0, 4, 8],
            [2, 4, 6]
        ]
        win_combos.any? do |combo|
            combo.all? do |position|
                $board[position] == $turn
            end
        end
    end
    def change_player
        $turn == 1 ? $turn += 1 : $turn -= 1
    end
end