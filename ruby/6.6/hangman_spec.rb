require_relative 'hangman'

describe Hangman do
  let(:game) { Hangman.new }

  it "adds word to game for friend to guess" do
    
    expect(game.create_word("baseball")).to eq ["_ _ _ _ _ _ _ _ "]
  end

it "shows progress made for correct letter" do
    
    expect(game.show_progress("baseball", "baseball")).to eq "baseball"
  end
  

  it "tells you if you got the mystery word correct or not" do
     
    expect(game.guess_word("baseball", "baseball")).to eq "you win!"
  end


end