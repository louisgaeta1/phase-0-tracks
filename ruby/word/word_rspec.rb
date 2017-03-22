require_relative 'word'

describe Game do
	let(:game) {Game.new("cash")}

	it "initalizes the game" do
		expect (game.answer).should match_array(["c","a","s","h"])
	end

	it "populates answer display" do
		expect(game.blanks.length).to eq game.answer.length
	end

	it "checks user input for matching letter in answer " do 
		expect(game.check_letter("a")).to eq true
		expect(game.blanks).to eq ["_","a","_","_"]
		expect(game.check_letter("r")).to eq false
	end

	it "prints the current guessed letters with blanks" do
		expect(game.display).to eq ('_ _ _ _')
		#game.check_letter("c")
		#expect(game.display).to eq ('c _ _ _') 
	end

	it "checks to see if the answer was solved" do
		game.check_letter("c")
		game.check_letter("a")
		game.check_letter("s")
		game.check_letter("h")
		expect(game.check_solved).to eq true
	end
end