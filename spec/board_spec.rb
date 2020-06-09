require_relative '../lib/board'

describe 'A Tic Tac Toe board' do

  empty_board = {
    top: {left: nil, middle: nil, right: nil},
    middle: {left: nil, middle: nil, right: nil},
    bottom: {left: nil, middle: nil, right: nil}
  }

  let(:midgame_board) {
    Board.new({
      top: {left: :o, middle: nil, right: nil},
      middle: {left: nil, middle: :x, right: nil},
      bottom: {left: nil, middle: nil, right: nil}
    })
  }

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

  it 'token_at method grabs correct token' do
    expect(midgame_board.token_at(:top, :left)).to eq(:o)
  end

  it 'reset method resets the board' do
    midgame_board.reset

    expect(midgame_board.locations).to eq(empty_board)
  end

  it 'empty? returns true if empty' do
    board = Board.new
    expect(board.empty?).to be_truthy
  end

end
