require_relative 'hangman'

describe Hangman do
  let(:game) { Hangman.new }

  it "adds word to game for friend to guess" do
    game.create_word("baseball")
    expect(game.create_word).to eq ["baseball"]
  end

  it "a letter guess to the mystery word" do
    game.guessed_letter("b")
    expect(game.guessed_letter).to eq ["b"]
  end

  it "shows progress made for correct letter" do
    game.show_progress("b")
    expect(game.show_progress).to eq ["b _ _ _ _ _ _ _"]
  end

  it "tells you if you got the mystery word correct or not" do
    game.guess_word("baseball")
    expect(game.create_word).to eq ["you win!"]
  end


end