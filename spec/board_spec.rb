require_relative '../lib/board'

describe 'A Tic Tac Toe board' do

  it 'exists' do
    Board.new
  end

  it 'has locations' do
    expect(Board.new).to respond_to(:locations)
  end

  it 'place method places token' do
    board = Board.new
    board.place(:x, :top, :left)

    expect(board.locations[:top][:left]).to eq(:x)
  end

end
