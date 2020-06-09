require_relative 'board'

class Game

  attr_accessor :board

  def initialize(board = Board.new)
    @board = board
  end

  def over?
    if board.full?
      true
    else
      false
    end
  end

  def tie?
    if board.full?
      true
    end
  end

  def winner
    if @board.token_at(:top, :left) == :x && @board.token_at(:top, :middle) == :x && @board.token_at(:top, :right) == :x
      :x
    end
  end

end
