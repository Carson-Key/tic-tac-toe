require_relative '../lib/board'

describe 'A Tic Tac Toe board' do

  it 'exists' do
    Board.new
  end

  it 'has locations' do
    expect(Board.new).to respond_to(:locations)
  end

end
