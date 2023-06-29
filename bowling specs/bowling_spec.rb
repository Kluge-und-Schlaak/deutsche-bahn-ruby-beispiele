# frozen_string_literal: true

require './bowling'

describe 'A bowling game' do
  it 'should allow to throw zeroes' do
    game = Bowling.new

    game.roll(0)

    expect(game.score).to eq(0)
  end

  it 'should allow to throw 2 times 3' do
    game = Bowling.new

    game.roll(3)
    game.roll(3)

    expect(game.score).to eq(6)
  end
end
